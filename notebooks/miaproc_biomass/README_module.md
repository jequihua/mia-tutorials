# miaproc Biomass Tutorials

Source repo: `../miaproc`

Tutorial goal: show how field tree measurements become tree-level biomass or
volume estimates using packaged equations, traceability fields, range checks,
and optional column mapping.

## Setup

Start from the `mia-tutorials` root and activate the shared Python 3.11
environment created in the main README.

Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
python -m pip install -e "..\miaproc[biomass]"
jupyter lab
```

macOS or Linux:

```bash
source .venv/bin/activate
python -m pip install -e "../miaproc[biomass]"
jupyter lab
```

The path `../miaproc` assumes the source repo is a sibling of `mia-tutorials`.
If your checkout differs, replace it with the path to your local `miaproc`
source repo. Open notebooks with the `Python (mia-tutorials 3.11)` kernel.

## Planned Notebooks

1. `01_tree_biomass_from_field_measurements.ipynb`
   - Use `miaproc.biomass.load_packaged_equations`.
   - Use `miaproc.biomass.estimate_trees`.
   - Start from `data/miaproc_biomass/`.
   - Reference `miaproc/tests/data/biomass/20260303_biomass_test.csv`.
2. `02_volume_equations_infys_and_custom_columns.ipynb`
   - Use `dataset="infys"` and the packaged `response_variable="VRTAcc"`.
   - Demonstrate `BiomassColumns` for alternate field names.
   - Show how missing height produces `height_missing`.

## Acceptance Checklist

- Inputs and units are stated in a markdown cell.
- Output columns for estimates, equation IDs, match status, and range status
  are inspected.
- Any synthetic rows are labelled as synthetic.
