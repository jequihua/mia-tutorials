# miaproc Eddy Tutorials

Source repo: `../miaproc`

Tutorial goal: show the eddy covariance processing path from flux and biomet
CSVs to stage-1 cleaned data, dynamic u-star, gap filling, partitioning, and
optional REddyProc reference comparison.

## Setup

Start from the `mia-tutorials` root and activate the shared Python 3.11
environment created in the main README.

Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
python -m pip install -e "..\miaproc[hesseflux]"
jupyter lab
```

macOS or Linux:

```bash
source .venv/bin/activate
python -m pip install -e "../miaproc[hesseflux]"
jupyter lab
```

The optional REddyProc comparison notebook also needs R, `rpy2`, and the
REddyProc R package. If the source package exposes the extra in your checkout,
install it in the same environment:

```powershell
python -m pip install -e "..\miaproc[reddyproc]"
```

Replace `../miaproc` with your local source path if the repositories are not
siblings. Open notebooks with the `Python (mia-tutorials 3.11)` kernel.

## Planned Notebooks

1. `01_stage1_load_and_qc.ipynb`
   - Use `miaproc.eddy.load_stage1`.
   - Reference `miaproc/examples/README.md`.
   - Inspect source columns, standardized columns, filtering, and timestamps.
2. `02_hesseflux_dynamic_ustar_gapfill.ipynb`
   - Mirror `miaproc/examples/01_python_only_hesseflux_dynamic.py`.
   - Use `HessefluxConfig` and `postproc(engine="hesseflux")`.
   - Inspect diagnostics in `out.attrs["miaproc_diagnostics"]`.
3. `03_reddyproc_reference_optional.ipynb`
   - Mirror `miaproc/examples/03_r_backed_reddyproc_reference.py`.
   - Keep as optional because it requires R, rpy2, and REddyProc setup.

## Acceptance Checklist

- No machine-specific flux/biomet paths are hard-coded.
- R-backed examples clearly label preflight and optional requirements.
- Outputs are small previews, not full production exports.
