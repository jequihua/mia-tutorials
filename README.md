# MIA Tutorials

Tutorial and case-study workspace for ManglarIA processing modules.

This repository is the user-facing layer around the project tools. It should
contain small, reproducible tutorial datasets in `data/` and runnable notebooks
or literate scripts in `notebooks/`. The source code for the tools remains in
the neighboring module repositories.

## Source Modules

The tutorials currently target these local repositories:

| Tutorial area | Source repository | Main runtime | Tutorial format |
|---|---|---|---|
| Tree biomass and eddy covariance | `C:/Users/dev/work/manglaria/repos/miaproc` | Python | Jupyter notebooks |
| Earth Engine compositing | `C:/Users/dev/work/manglaria/repos/geecomposer` | Python | Jupyter notebooks |
| ERA5-Land climate pipeline | `C:/Users/dev/work/manglaria/repos/mia-climate` | Python scripts | Jupyter notebooks |
| LiDAR products and teacher grids | `C:/Users/dev/work/manglaria/repos/mia-lidar` | R | Quarto documents |
| Allometric equation rebuild | `C:/Users/dev/work/manglaria/repos/mia-allometric` | R | Quarto documents |
| Camera-trap occupancy prep | `C:/Users/dev/work/manglaria/repos/mia-occupancy` | R | Quarto documents |

## Repository Layout

```text
mia-tutorials/
  data/
    miaproc_biomass/
    miaproc_eddy/
    geecomposer/
    mia_climate/
    mia_lidar/
    mia_allometric/
    mia_occupancy/
  notebooks/
    miaproc_biomass/
    miaproc_eddy/
    geecomposer/
    mia_climate/
    mia_lidar/
    mia_allometric/
    mia_occupancy/
```

Each module folder has a `README_module.md` that records the source repo,
expected tutorial data, and planned notebook steps.

## Python Environment

Use one Python 3.11 virtual environment at the project root for all Python
tutorials.

```powershell
cd C:\Users\dev\work\manglaria\repos\mia-tutorials
py -3.11 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip wheel setuptools
python -m pip install -r requirements-tutorials.txt
python -m pip install -e "..\miaproc[biomass,hesseflux]"
python -m pip install -e "..\geecomposer[dev]"
python -m ipykernel install --user --name mia-tutorials-py311 --display-name "Python (mia-tutorials 3.11)"
```

Optional pieces:

- `miaproc` REddyProc notebooks need the `reddyproc` extra and a working R
  setup for `rpy2`: `python -m pip install -e "..\miaproc[reddyproc]"`.
- `mia-climate` is currently script-based and has no visible top-level
  `pyproject.toml`. Its tutorials should import helpers by adding
  `C:/Users/dev/work/manglaria/repos/mia-climate` to `sys.path`, or run the
  source scripts with that repo as the working directory.
- Google Earth Engine tutorials require local Earth Engine credentials and a
  project such as `manglariars`.

## R Environment

R tutorials use the computer's general R installation. They should keep the
actual workflow code in source `.R` scripts or Quarto `.qmd` files instead of
embedding long R scripts inside Python notebooks.

Recommended packages by module:

- `mia-lidar`: `lidR`, `terra`, `sf`
- `mia-allometric`: packages used by the source scripts, including tabular,
  SQLite, Excel, and parquet tooling
- `mia-occupancy`: `dplyr`, `tidyr`, `lubridate`, `readr`, `tibble`, `purrr`,
  `stringr`, `here`, `devtools`, `spOccupancy` when modeling is included

## Working Principles

- Keep tutorial datasets small and documented.
- Prefer executable notebooks, Quarto documents, and scripts over prose-only
  walkthroughs.
- Put long-running, large-data, credentialed, or external-drive steps behind
  explicit "run only when ready" sections.
- Preserve source-module boundaries: tutorials explain and orchestrate; source
  repos own processing logic.
- Record source paths and data provenance in each module README before adding
  new tutorial content.

