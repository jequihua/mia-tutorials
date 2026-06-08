# mia-allometric Tutorials

Source repo: `../mia-allometric`

Tutorial goal: show how the R allometry rebuild converts source equation
families into clean CSV, SQLite, parquet, and BigQuery handoff products.

## Setup

Open `mia-tutorials` as an RStudio project:

1. In RStudio, select `File > New Project`.
2. Select `Existing Directory`.
3. Browse to your local `mia-tutorials` folder.
4. Select `Create Project`.

This tutorial repo has a `.here` marker, and all R path examples use
`here::here()`. Install the common packages in R:

```r
install.packages(c(
  "here", "jsonlite", "readr", "dplyr", "stringr", "tidyr", "readxl",
  "DBI", "RSQLite"
))
```

If you regenerate parquet outputs from the source repo, also install the parquet
package used by that workflow, commonly `arrow`:

```r
install.packages("arrow")
```

The path `../mia-allometric` assumes the source repo is a sibling of
`mia-tutorials`. If your checkout differs, replace it in the setup chunks or
terminal examples with the path from your own file structure.

Open `.qmd` files in RStudio and use `Run Current Chunk` while checking paths.
Use `Render` once the local source-repo path and data inputs are confirmed.

## Planned Quarto Documents

1. `01_volume_equation_rebuild.qmd`
   - Reference `R/01_ingest_volume.R`.
   - Reference `R/02_build_sqlite_volume.R`.
   - Reference `R/03_export_parquet_volume.R`.
2. `02_mangrove_biomass_equations.qmd`
   - Reference `R/04_ingest_biomass.R`.
   - Explain wood-density substitution and `equation_numpy_wd_fixed`.
3. `03_unified_outputs_and_bigquery_schema.qmd`
   - Reference `R/05_build_unified_clean.R` through `R/07_export_parquet_unified.R`.
   - Reference `db/bigquery_unified_schema.json`.

## Acceptance Checklist

- Source-language fields and translated output fields are documented.
- Full output regeneration is opt-in.
- Links to downstream `miaproc.biomass` consumption are included.
