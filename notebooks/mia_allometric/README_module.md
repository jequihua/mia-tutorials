# mia-allometric Tutorials

Source repo: `../mia-allometric`

Tutorial goal: show how the R allometry rebuild converts source equation
families into clean CSV, SQLite, parquet, and BigQuery handoff products.

Planned Quarto documents:

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

Notebook acceptance checklist:

- Source-language fields and translated output fields are documented.
- Full output regeneration is opt-in.
- Links to downstream `miaproc.biomass` consumption are included.

