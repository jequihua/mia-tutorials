# mia-occupancy Tutorials

Source repo: `C:/Users/dev/work/manglaria/repos/mia-occupancy`

Tutorial goal: show how camera-trap detections become detection histories and
`spOccupancy` input objects.

Planned Quarto documents:

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

Notebook acceptance checklist:

- Tutorial data are anonymized or synthetic.
- Effort assumptions are stated clearly.
- Weather covariates are optional until the source table is available.

