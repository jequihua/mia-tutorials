from __future__ import annotations

import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def validate_notebooks() -> None:
    for path in sorted((ROOT / "notebooks").glob("**/*.ipynb")):
        with path.open("r", encoding="utf-8") as f:
            json.load(f)
        print(f"notebook ok: {path.relative_to(ROOT)}")


def validate_imports() -> None:
    import geecomposer  # noqa: F401
    import miaproc  # noqa: F401
    import pandas as pd

    climate_repo = ROOT.parent / "mia-climate"
    sys.path.insert(0, str(climate_repo))
    import lib.download_plan  # noqa: F401
    import lib.regions  # noqa: F401

    print(f"imports ok: pandas {pd.__version__}")


if __name__ == "__main__":
    validate_notebooks()
    validate_imports()

