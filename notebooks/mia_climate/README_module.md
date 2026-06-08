# mia-climate Tutorials

Source repo: `../mia-climate`

Tutorial goal: show the ERA5-Land pipeline as a reproducible dry-run first,
then explain where live CDS acquisition and NetCDF processing fit.

## Setup

Start from the `mia-tutorials` root and activate the shared Python 3.11
environment created in the main README.

Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
jupyter lab
```

macOS or Linux:

```bash
source .venv/bin/activate
jupyter lab
```

Important packaging note: `mia-climate` is script-based and currently has no
visible top-level `pyproject.toml`. The notebooks therefore add the source repo
to `sys.path`, or they call source scripts with the source repo as the working
directory. The path `../mia-climate` assumes a sibling checkout; replace it with
your local source path if needed.

Open notebooks with the `Python (mia-tutorials 3.11)` kernel.

## Planned Notebooks

1. `01_validate_region_and_plan_downloads.ipynb`
   - Use `lib.regions.validate_region`.
   - Use `lib.download_plan`.
   - Reference `mia-climate/data/rbmn.geojson`.
2. `02_dry_run_pipeline_and_validation.ipynb`
   - Mirror `scripts/05_run_pipeline.py --mode dry-run`.
   - Validate with `scripts/06_validate_outputs.py`.
3. `03_indices_from_daily_products.ipynb`
   - Use `lib.indices_temperature`, `lib.indices_precipitation`, and
     `lib.index_manifest`.
   - Keep actual NetCDF work optional and fixture-sized.

## Acceptance Checklist

- Dry-run mode is the default path.
- CDS credential and live acquisition steps are clearly separated.
- Large NetCDF outputs are not written into this repo by default.
