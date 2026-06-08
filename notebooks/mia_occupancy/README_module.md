# mia-occupancy Tutorials

Source repo: `../mia-occupancy`

Tutorial goal: show how camera-trap detections become detection histories and
`spOccupancy` input objects.

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
  "here", "devtools", "dplyr", "tidyr", "lubridate", "readr", "tibble",
  "purrr", "stringr", "readxl", "ggplot2"
))
```

Install `spOccupancy` when the modeling or model-input examples are ready:

```r
install.packages("spOccupancy")
```

The path `../mia-occupancy` assumes the source repo is a sibling of
`mia-tutorials`. If your checkout differs, replace it in the setup chunks with
the path from your own file structure.

Open `.qmd` files in RStudio and use `Run Current Chunk` while checking paths.
The tutorial documents use small copied or synthetic data from
`data/mia_occupancy/` by default.

## Planned Quarto Documents

1. `01_camera_trap_cleaning.qmd`
   - Reference `scripts/run_camera_only_example.R`.
   - Use `read_camera_trap_data`, `build_scientific_name`, and
     `filter_identified_records`.
2. `02_events_periods_and_detection_history.qmd`
   - Use `define_independent_events`, `add_sampling_period`,
     `infer_sampling_effort`, and detection-history builders.
3. `03_spoccupancy_input_and_covariates.qmd`
   - Use `build_spoccupancy_input`.
   - Add optional weather covariates from `scripts/run_data_preparation.R`.

## Acceptance Checklist

- Tutorial data are anonymized or synthetic.
- Effort assumptions are stated clearly.
- Weather covariates are optional until the source table is available.
