from pathlib import Path
import shutil

BASE = Path.cwd()

main_dir = BASE / "Pool-Datapack-Base-Squid-Workshop-1.21plus"
override_dir = BASE / "Pool-Datapack-Overrides_26.3"

data_dir = main_dir / "data"
override_data = override_dir / "data"

legacy_dirs = [
    main_dir / "v0_v1" / "data",
    main_dir / "v2_v3" / "data",
    main_dir / "v4_v4" / "data",
    main_dir / "v5_v262" / "data",
]

for override_file in override_data.rglob("*"):
    if not override_file.is_file():
        continue

    rel = override_file.relative_to(override_data)
    original_file = data_dir / rel

    for legacy_data in legacy_dirs:
        legacy_file = legacy_data / rel

        if not legacy_file.exists():
            legacy_file.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(original_file, legacy_file)
            print(f"Saved legacy: {legacy_file.relative_to(main_dir)}")

    # Replace base version with 26.3 implementation
    shutil.copy2(override_file, original_file)
    print(f"Updated base: {rel}")