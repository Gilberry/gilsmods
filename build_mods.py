import os
import json
import zipfile
import sys
from pathlib import Path

# Paths
repo_root = Path(__file__).parent
mods_dir = repo_root / "mods"
dist_dir = repo_root / "dist"

# Ensure dist exists
dist_dir.mkdir(exist_ok=True)

# Check if a mod name was passed as argument
single_mod = sys.argv[1] if len(sys.argv) > 1 else None

# Loop through each mod folder
for mod_folder in mods_dir.iterdir():
    if not mod_folder.is_dir():
        continue

    mod_name = mod_folder.name

    # Skip the template
    if mod_name == "_mod-template":
        continue

    # Skip mods that don't match single_mod if specified
    if single_mod and mod_name != single_mod:
        continue

    info_json = mod_folder / "info.json"
    if not info_json.exists():
        print(f"Skipping '{mod_name}': no info.json")
        continue

    # Read version
    try:
        with open(info_json, "r", encoding="utf-8") as f:
            version = json.load(f).get("version", "0.0.1")
    except json.JSONDecodeError:
        print(f"Skipping '{mod_name}': invalid info.json")
        continue

    zip_name = f"{mod_name}_{version}.zip"
    zip_path = dist_dir / zip_name

    # Remove old ZIP if exists
    if zip_path.exists():
        zip_path.unlink()

    # Create ZIP
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zipf:
        for root, _, files in os.walk(mod_folder):
            for file in files:
                file_path = Path(root) / file
                # Preserve folder structure relative to mod folder
                zipf.write(file_path, file_path.relative_to(mod_folder))

    print(f"Built {zip_name}")

if single_mod:
    print(f"Finished building single mod: {single_mod}")
else:
    print("Finished building all mods")
