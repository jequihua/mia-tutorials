# geecomposer Tutorials

Source repo: `../geecomposer`

Tutorial goal: show how to build Earth Engine composites with a small explicit
API, from initialization and AOIs through Sentinel-2, Sentinel-1, yearly
grouping, and Drive export task creation.

Planned notebooks:

1. `01_initialize_and_aoi.ipynb`
   - Use `geecomposer.initialize`.
   - Use AOI fixtures from `geecomposer/tests/fixtures/` or
     `data/geecomposer/`.
2. `02_sentinel2_ndvi_composite.ipynb`
   - Mirror `geecomposer/examples/sentinel2_ndvi_max.py`.
   - Use `compose(dataset="sentinel2")` and `ndvi()`.
3. `03_sentinel1_float_gamma_map.ipynb`
   - Mirror `geecomposer/examples/sentinel1_float_gamma_map.py`.
   - Use `dataset="sentinel1_float"`, `gamma_map()`, and a VH/VV ratio.
4. `04_yearly_and_drive_export.ipynb`
   - Use `compose_yearly` and `export_to_drive`.
   - Keep `task.start()` disabled by default.

Notebook acceptance checklist:

- Earth Engine credential requirements are explicit.
- Export tasks are created but not started unless the user opts in.
- AOI paths are relative to this tutorial repo or source fixtures.

