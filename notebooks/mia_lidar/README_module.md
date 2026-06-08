# mia-lidar Tutorials

Source repo: `C:/Users/dev/work/manglaria/repos/mia-lidar`

Tutorial goal: explain the R/lidR LiDAR product workflow from TP/GP/AP triplet
inspection through CHM/DEM products, teacher-grid construction, agreement QA,
and tolerance re-cuts.

Planned Quarto documents:

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

Notebook acceptance checklist:

- Raw LAS/LAZ files remain external.
- Run blocks default to `eval: false` until real paths are supplied.
- Outputs and CRS expectations are documented before batch runs.

