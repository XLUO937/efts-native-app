import os
from pathlib import Path

proc_dir = Path("app/procedures")
py_dir = Path("python")
test_dir = Path("test")
setup_path = Path("app/setup/setup.sql")

with open(setup_path, "w", encoding="utf-8") as out:
    out.write("-- AUTO-GENERATED SETUP FILE\n\n")
    for folder in [proc_dir, py_dir, test_dir]:
        for file in folder.glob("*.sql") if folder != py_dir else folder.glob("*.py"):
            out.write(f"-- Included from {file}\n")
            content = file.read_text(encoding="utf-8")
            out.write(content + "\n\n")
