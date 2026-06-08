# mia-lidar Tutorial Data

Source module: `../mia-lidar`

Primary scripts to illustrate:

- `R/00_build_lax_indexes.R`
- `R/01_inspect_inputs.R`
- `R/02_batch_chm_mean_10m.R`
- `R/03_batch_dem_mean_10m.R`
- `R/04_batch_teacher_grid_v1.R`
- `R/05_audit_teacher_agreement.R`
- `R/06_apply_alternate_tolerance.R`

Useful source references:

- `../mia-lidar/README.md`
- `../mia-lidar/instructions/02_lidar_teacher_products.md`
- `../mia-lidar/instructions/feature_stack_decision_note.md`
- `../mia-lidar/notes/009_dji_l1_vendor_las_quirks.md`
- `../mia-lidar/notes/012_architect_decision_agreement_rule_recut_v1_1.md`

Do not commit raw `.las` or `.laz` archives here. Use this folder for tiny
derived QA fixtures, manifests, or documentation that points to external data
locations.

Raw LiDAR point clouds should be downloaded from Google Cloud Storage or read
from a mounted/cloud-accessible location before running the raw-data sections
of the tutorials. Replace the placeholder bucket/path in notebooks with the
project's current Google Cloud location, for example:

```text
gs://<manglaria-lidar-bucket>/<reserve-or-case-study>/
```

For local runs, download or sync the relevant case-study folder first. The
preferred tutorial location is a git-ignored folder under:

```text
data/mia_lidar/raw/<reserve-or-case-study>/
```

The R tutorials then refer to it with `here::here()`, for example:

```r
here::here("data", "mia_lidar", "raw", "<reserve-or-case-study>", "<area-folder>")
```

If your data are mounted somewhere else, adjust that path deliberately in your
local working copy and avoid committing machine-specific paths.

