#!/usr/bin/env python3
"""
organize_webforms.py

- Finds the first .csproj in the current directory.
- Groups WebForms files into folders by prefix (DVP, HR, Employee, Admin).
- Moves .aspx, .aspx.cs, .aspx.designer.cs as a unit into the folder.
- Updates the `CodeBehind` attribute inside .aspx to the new relative path (forward slashes).
- Updates all <... Include="..."> entries in the .csproj that referenced moved files.
- Creates backups: <proj>.backup.xml and a timestamped .tar.gz of moved files.

Usage:
  python organize_webforms.py [--dry-run]

After running:
- Open the project in Visual Studio and run the __Convert to Web Application__ command on moved pages if designer files need regeneration.
- Rebuild the solution.
"""
from __future__ import annotations
import os
import sys
import argparse
import shutil
import xml.etree.ElementTree as ET
from pathlib import Path
from datetime import datetime
import tarfile

KNOWN_PREFIXES = ("DVP", "HR", "Employee", "Admin")

def find_csproj(root: Path) -> Path:
    csprojs = list(root.glob("*.csproj"))
    if not csprojs:
        raise SystemExit("No .csproj found in current directory.")
    return csprojs[0]

def choose_folder_for(filename: str) -> str:
    base = Path(filename).stem
    # e.g. DVP_AnnualApproval.aspx -> prefix 'DVP'
    if "_" in base:
        prefix = base.split("_", 1)[0]
        if prefix in KNOWN_PREFIXES:
            return prefix
    # fallback heuristics
    for p in KNOWN_PREFIXES:
        if base.startswith(p):
            return p
    return "Other"

def collect_webform_files(root: Path):
    # collect all .aspx and their companion .aspx.cs and .aspx.designer.cs
    pages = {}
    for aspx in root.glob("*.aspx"):
        name = aspx.name
        cs = root / (aspx.stem + ".aspx.cs")
        designer = root / (aspx.stem + ".aspx.designer.cs")
        pages[name] = {
            "aspx": aspx,
            "cs": cs if cs.exists() else None,
            "designer": designer if designer.exists() else None,
            "folder": choose_folder_for(name)
        }
    return pages

def update_codebehind_attribute(aspx_path: Path, new_rel_cs_path: str, dry_run: bool):
    text = aspx_path.read_text(encoding="utf-8")
    # replace CodeBehind="...". Use conservative regex-like approach
    import re
    def repl(match):
        pre = match.group(1)
        return f'{pre}CodeBehind="{new_rel_cs_path}"'
    new_text, n = re.subn(r'(\sCodeBehind\s*=\s*")[^"]*"', repl, text, count=1)
    if n == 0:
        # try without leading space (in case placed differently)
        new_text, n = re.subn(r'(CodeBehind\s*=\s*")[^"]*"', repl, text, count=1)
    if n == 0:
        print(f"Warning: could not find CodeBehind attribute in {aspx_path}")
        return
    if not dry_run:
        aspx_path.write_text(new_text, encoding="utf-8")

def backup_and_archive(moved_files, root: Path):
    ts = datetime.now().strftime("%Y%m%d%H%M%S")
    tarname = root / f"webforms_moved_{ts}.tar.gz"
    with tarfile.open(tarname, "w:gz") as tar:
        for p in moved_files:
            tar.add(p, arcname=p.relative_to(root))
    print(f"Archived moved files to {tarname}")

def update_csproj_paths(csproj_path: Path, moves: dict, dry_run: bool):
    ET.register_namespace('', "http://schemas.microsoft.com/developer/msbuild/2003")
    tree = ET.parse(csproj_path)
    root = tree.getroot()
    changed = 0
    for elem in root.findall(".//"):
        include = elem.get("Include")
        if not include:
            continue
        inc_name = Path(include).name
        if inc_name in moves:
            new_rel = str(Path(moves[inc_name]).as_posix())
            if include != new_rel:
                print(f"Updating csproj Include: {include} -> {new_rel}")
                if not dry_run:
                    elem.set("Include", new_rel)
                changed += 1
    if changed > 0:
        backup = csproj_path.with_suffix(csproj_path.suffix + ".backup.xml")
        if not dry_run:
            shutil.copy2(csproj_path, backup)
            tree.write(csproj_path, encoding="utf-8", xml_declaration=True)
            print(f"Backed up original csproj to {backup}")
    else:
        print("No csproj entries needed updating.")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true", help="Show changes without writing files")
    args = parser.parse_args()
    root = Path.cwd()
    try:
        csproj = find_csproj(root)
    except SystemExit as e:
        print(e)
        sys.exit(1)
    print(f"Using project: {csproj.name}")
    pages = collect_webform_files(root)
    if not pages:
        print("No .aspx pages found in project root.")
        return
    moves = {}  # old filename -> new path (posix)
    moved_files = []
    for name, info in pages.items():
        folder = info["folder"]
        target_dir = root / folder
        target_dir.mkdir(parents=True, exist_ok=True)
        # move files
        for key in ("aspx", "cs", "designer"):
            src = info.get(key)
            if not src:
                continue
            dest = target_dir / src.name
            print(f"Moving {src} -> {dest}")
            moves[src.name] = dest.relative_to(root).as_posix()
            moved_files.append(src)
            if not args.dry_run:
                shutil.move(str(src), str(dest))
        # update CodeBehind inside moved .aspx
        aspx_new = target_dir / name
        cs_name = name.replace(".aspx", ".aspx.cs")
        new_rel_cs_path = (Path(folder) / cs_name).as_posix()
        update_codebehind_attribute(aspx_new, new_rel_cs_path, args.dry_run)
    # update csproj
    update_csproj_paths(csproj, moves, args.dry_run)
    if not args.dry_run and moved_files:
        backup_and_archive(moved_files, root)
    print("Done. Next steps:")
    print("- Open solution in Visual Studio and run the __Convert to Web Application__ command on moved folders if designer files are out-of-sync.")
    print("- Rebuild solution.")

if __name__ == "__main__":
    main()