# miaproc Biomass Tutorials

Source repo: `C:/Users/dev/work/manglaria/repos/miaproc`

Tutorial goal: show how field tree measurements become tree-level biomass or
volume estimates using packaged equations, traceability fields, range checks,
and optional column mapping.

Planned notebooks:

1. `01_tree_biomass_from_field_measurements.ipynb`
   - Use `miaproc.biomass.load_packaged_equations`.
   - Use `miaproc.biomass.estimate_trees`.
   - Start from `data/miaproc_biomass/`.
   - Reference `miaproc/tests/data/biomass/20260303_biomass_test.csv`.
2. `02_volume_equations_infys_and_custom_columns.ipynb`
   - Use `dataset="infys"` and the packaged `response_variable="VRTAcc"`.
   - Demonstrate `BiomassColumns` for alternate field names.
   - Show how missing height produces `height_missing`.

Notebook acceptance checklist:

- Inputs and units are stated in a markdown cell.
- Output columns for estimates, equation IDs, match status, and range status
  are inspected.
- Any synthetic rows are labelled as synthetic.
