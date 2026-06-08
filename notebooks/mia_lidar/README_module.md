# mia-lidar Tutorials

Source repo: `../mia-lidar`

Tutorial goal: explain the R/lidR LiDAR product workflow from TP/GP/AP triplet
inspection through CHM/DEM products, teacher-grid construction, agreement QA,
and tolerance re-cuts.

## Setup

Open `mia-tutorials` as an RStudio project:

1. In RStudio, select `File > New Project`.
2. Select `Existing Directory`.
3. Browse to your local `mia-tutorials` folder.
4. Select `Create Project`.

This tutorial repo has a `.here` marker, and all R path examples use
`here::here()`. Install the required packages in R:

```r
install.packages(c("here", "lidR", "terra", "sf", "readr", "dplyr", "ggplot2"))
```

The path `../mia-lidar` assumes the source repo is a sibling of
`mia-tutorials`. If your checkout differs, replace it in the setup chunks with
the path from your own file structure.

Raw point clouds are intentionally external to this repository. Download them
from Google Cloud Storage, or read them from a mounted/cloud-accessible
location, before running raw LiDAR steps. The preferred tutorial pattern is to
sync the selected case-study data into a repo-local ignored folder such as:

```text
data/mia_lidar/raw/<reserve-or-case-study>/
```

Then refer to that location from R with:

```r
here::here("data", "mia_lidar", "raw", "<reserve-or-case-study>")
```

Replace placeholders such as
`gs://<manglaria-lidar-bucket>/<reserve-or-case-study>/` with the project's
current bucket/path when the real cloud location is available.

Open `.qmd` files in RStudio and use `Run Current Chunk` while checking paths.
Use `Render` only after the raw-data variables are deliberately configured.

## Planned Quarto Documents

1. `01_lidar_input_inspection.qmd`
   - Explain TP/GP/AP input conventions.
   - Reference `R/01_inspect_inputs.R` and `R/helpers.R`.
2. `02_chm_dem_10m_products.qmd`
   - Reference `R/02_batch_chm_mean_10m.R`.
   - Reference `R/03_batch_dem_mean_10m.R`.
3. `03_teacher_grid_consensus_height.qmd`
   - Reference `R/04_batch_teacher_grid_v1.R`.
   - Reference `instructions/02_lidar_teacher_products.md`.
4. `04_tolerance_recut_and_agreement_audit.qmd`
   - Reference `R/05_audit_teacher_agreement.R`.
   - Reference `R/06_apply_alternate_tolerance.R`.
   - Reference `notes/012_architect_decision_agreement_rule_recut_v1_1.md`.

## Acceptance Checklist

- Raw LAS/LAZ files remain external or in ignored raw-data folders.
- Google Cloud or local raw-data paths are clearly set before raw-data runs.
- Run blocks default to `eval: false` until real paths are supplied.
- Outputs and CRS expectations are documented before batch runs.
