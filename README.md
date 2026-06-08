# MIA Tutorials

Tutorial and case-study workspace for ManglarIA processing modules.

This repository is the user-facing layer around the project tools. It contains
small tutorial datasets in `data/` and runnable notebooks, scripts, or Quarto
documents in `notebooks/`. The source code for the tools stays in the module
repositories.

## Source Modules

The tutorials currently target these source repositories. Most command examples
assume the repositories are cloned as siblings under one parent folder:

```text
<repos-root>/
  mia-tutorials/
  miaproc/
  geecomposer/
  mia-climate/
  mia-lidar/
  mia-allometric/
  mia-occupancy/
```

This is only an illustrative layout. If your repositories live elsewhere,
replace paths such as `..\geecomposer` or `../mia-lidar` with the paths from
your own file structure.

| Tutorial area | Source repository | Main runtime | Tutorial format |
|---|---|---|---|
| Tree biomass and eddy covariance | `../miaproc` | Python | Jupyter notebooks |
| Earth Engine compositing | `../geecomposer` | Python | Jupyter notebooks |
| ERA5-Land climate pipeline | `../mia-climate` | Python scripts | Jupyter notebooks |
| LiDAR products and teacher grids | `../mia-lidar` | R | Quarto documents |
| Allometric equation rebuild | `../mia-allometric` | R | Quarto documents |
| Camera-trap occupancy prep | `../mia-occupancy` | R | Quarto documents |

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

Each module folder has a `README_module.md` with module-specific setup notes,
source paths, data expectations, and planned tutorial steps.

## Install Python

Use Python 3.11.9 for these tutorials.

On Windows:

1. Download Python 3.11.9 from [python.org](https://www.python.org/downloads/release/python-3119/).
2. Run the installer.
3. Enable `Add python.exe to PATH` if you want `python` available in new
   terminals. The `py` launcher usually works even when this box is not
   checked.
4. Open a new PowerShell terminal and verify:

```powershell
py -3.11 --version
```

On macOS or Linux, install Python 3.11.9 with your normal package manager,
`pyenv`, or the official installer, then verify:

```bash
python3.11 --version
```

## Create the Python Virtual Environment

Create one virtual environment in the `mia-tutorials` root and reuse it for all
Python-based modules.

Windows PowerShell:

```powershell
cd <path-to-your-repos>\mia-tutorials
py -3.11 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip wheel setuptools
python -m pip install -r requirements-tutorials.txt
python -m ipykernel install --user --name mia-tutorials-py311 --display-name "Python (mia-tutorials 3.11)"
```

macOS or Linux:

```bash
cd <path-to-your-repos>/mia-tutorials
python3.11 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip wheel setuptools
python -m pip install -r requirements-tutorials.txt
python -m ipykernel install --user --name mia-tutorials-py311 --display-name "Python (mia-tutorials 3.11)"
```

If PowerShell blocks activation, run this once for your user profile and then
activate again:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

## Install a Python Module

After activating `.venv`, install the source module you want to work on. For
example, to use `geecomposer` from a sibling checkout:

```powershell
python -m pip install -e "..\geecomposer[dev]"
```

If your source repo is elsewhere, replace `..\geecomposer` with your local
path. For example:

```powershell
python -m pip install -e "<path-to-your-geecomposer-repo>[dev]"
```

Other common editable installs:

```powershell
python -m pip install -e "..\miaproc[biomass]"
python -m pip install -e "..\miaproc[hesseflux]"
```

`mia-climate` is currently script-based, so its tutorials add the source repo
to `sys.path` or run source scripts from that repository. Install instructions
may change if that repository becomes a Python package.

## Run Jupyter

Start Jupyter from the activated `.venv`:

```powershell
jupyter lab
```

Then open a notebook such as:

```text
notebooks/geecomposer/01_initialize_and_aoi.ipynb
```

Choose the `Python (mia-tutorials 3.11)` kernel. Module-specific README files
explain which editable package install is needed before each notebook group.

## Install R, RStudio, and Quarto

R-based tutorials use the computer's normal R installation.

1. Install R from [CRAN](https://cran.r-project.org/).
2. Install RStudio Desktop from [Posit](https://posit.co/download/rstudio-desktop/).
3. Install Quarto from [quarto.org](https://quarto.org/docs/get-started/) if
   your RStudio installation does not already include it.
4. Verify Quarto in a terminal:

```powershell
quarto --version
```

Open RStudio and install the general packages used by the R tutorials:

```r
install.packages(c(
  "here", "devtools", "dplyr", "readr", "tidyr", "lubridate", "tibble",
  "purrr", "stringr", "ggplot2", "jsonlite", "sf", "terra", "lidR"
))
```

Some modules need extra packages, for example `spOccupancy` for occupancy
modeling or parquet/SQLite tooling for allometric exports. The corresponding
`README_module.md` files list the extra packages.

## Create an RStudio Project

For this tutorial hub:

1. Open RStudio.
2. Select `File > New Project`.
3. Select `Existing Directory`.
4. Browse to `<path-to-your-repos>/mia-tutorials`.
5. Select `Create Project`.

This repository is a special multi-module tutorial hub. For normal R analysis
work, the better project directory is usually smaller and more focused, such as
one source module or one case-study folder.

All R and Quarto tutorials use `here::here()` for project paths. The `.here`
file in this repository marks the project root. Prefer paths like:

```r
here::here("data", "mia_lidar", "sample_chm_mean_10m.tif")
```

For large data, download or sync files into a repo-local ignored folder such as
`data/mia_lidar/raw/`, or deliberately adjust the path in the tutorial to match
your own storage layout.

## Open and Run a Quarto Document

In RStudio:

1. Open the `mia-tutorials` project.
2. Open a document such as
   `notebooks/mia_lidar/01_lidar_input_inspection.qmd`.
3. Read the setup cells and adjust any source-repo or raw-data path notes for
   your checkout.
4. Use `Run Current Chunk` while developing.
5. Use the `Render` button when you want the full HTML output.

From a terminal, you can also render a document:

```powershell
quarto render notebooks/mia_lidar/01_lidar_input_inspection.qmd
```

Most Quarto documents default to `eval: false` so they do not launch large
external-data workflows until you intentionally enable and configure them.

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
