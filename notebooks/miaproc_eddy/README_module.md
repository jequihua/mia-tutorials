# miaproc Eddy Tutorials

Source repo: `../miaproc`

Tutorial goal: show the eddy covariance processing path from flux and biomet
CSVs to stage-1 cleaned data, dynamic u-star, gap filling, partitioning, and
optional REddyProc reference comparison.

Planned notebooks:

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

Notebook acceptance checklist:

- No machine-specific flux/biomet paths are hard-coded.
- R-backed examples clearly label preflight and optional requirements.
- Outputs are small previews, not full production exports.

