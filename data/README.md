# Tutorial Data

This folder holds small, documented datasets used by the tutorials. Prefer
excerpted, synthetic, anonymized, or otherwise shareable case-study inputs.

Large or sensitive source data should stay outside this repository. When a
tutorial depends on external-drive data, BigQuery, Earth Engine, Copernicus CDS,
or raw LiDAR archives, document the path and expected shape in the relevant
module README rather than copying the data here.

Module folders:

- `miaproc_biomass`: tree-level field measurement excerpts.
- `miaproc_eddy`: flux and biomet CSV excerpts.
- `geecomposer`: AOI GeoJSON files and export metadata examples.
- `mia_climate`: region polygons and small manifest fixtures.
- `mia_lidar`: tiny QA fixtures or links to external LiDAR archives.
- `mia_allometric`: small source/output excerpts from the allometry rebuild.
- `mia_occupancy`: camera-trap and optional weather excerpts.

