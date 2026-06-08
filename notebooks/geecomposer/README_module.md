# geecomposer Tutorials

Source repo: `../geecomposer`

Tutorial goal: show how to build Earth Engine composites with a small explicit
API, from initialization and AOIs through Sentinel-2, Sentinel-1, yearly
grouping, and Drive export task creation.

## Setup

Start from the `mia-tutorials` root and activate the shared Python 3.11
environment created in the main README.

Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
python -m pip install -e "..\geecomposer[dev]"
jupyter lab
```

macOS or Linux:

```bash
source .venv/bin/activate
python -m pip install -e "../geecomposer[dev]"
jupyter lab
```

The path `../geecomposer` assumes the source repo is a sibling of
`mia-tutorials`. If your checkout differs, replace it with the path to your
local `geecomposer` source repo.

Earth Engine notebooks also require local Earth Engine credentials and access
to the project used by the tutorial. Run authentication outside the notebook if
needed:

```powershell
earthengine authenticate
```

Open these notebooks with the `Python (mia-tutorials 3.11)` kernel.

## Planned Notebooks

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

## Acceptance Checklist

- Earth Engine credential requirements are explicit.
- Export tasks are created but not started unless the user opts in.
- AOI paths are relative to this tutorial repo or source fixtures.
