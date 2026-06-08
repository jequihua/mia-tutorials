# mia-climate Tutorials

Source repo: `C:/Users/dev/work/manglaria/repos/mia-climate`

Tutorial goal: show the ERA5-Land pipeline as a reproducible dry-run first,
then explain where live CDS acquisition and NetCDF processing fit.

Important packaging note: this source repo is script-based and currently has no
visible top-level `pyproject.toml`. Tutorials should add the source repo to
`sys.path` when importing `lib.*`, or run scripts with the source repo as the
working directory.

Planned notebooks:

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

Notebook acceptance checklist:

- Dry-run mode is the default path.
- CDS credential and live acquisition steps are clearly separated.
- Large NetCDF outputs are not written into this repo by default.

