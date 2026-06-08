# mia-climate Tutorial Data

Source module: `../mia-climate`

Primary scripts and helpers to illustrate:

- `scripts/00_validate_region.py`
- `scripts/01_plan_downloads.py`
- `scripts/03_preprocess_daily.py`
- `scripts/04_compute_indices.py`
- `scripts/05_run_pipeline.py`
- `scripts/06_validate_outputs.py`
- `lib/regions.py`
- `lib/download_plan.py`
- `lib/pipeline_runner.py`

Useful source references:

- `../mia-climate/data/rbmn.geojson`
- `../mia-climate/data/data_sources.md`
- `../mia-climate/data/storage_layout.md`
- `../mia-climate/runs/dev_region/`

Place small region polygons and dry-run manifest fixtures here. Keep raw NetCDF
and derived climate products outside the tutorial repo unless they are tiny
fixtures.

