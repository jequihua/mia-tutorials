param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path $RepoRoot
$repos = Resolve-Path (Join-Path $root "..")

New-Item -ItemType Directory -Force -Path `
    "$root\data\miaproc_biomass", `
    "$root\data\miaproc_eddy\full_output", `
    "$root\data\miaproc_eddy\biomet", `
    "$root\data\geecomposer", `
    "$root\data\mia_climate", `
    "$root\data\mia_lidar", `
    "$root\data\mia_allometric", `
    "$root\data\mia_occupancy" | Out-Null

Copy-Item -Force "$repos\miaproc\tests\data\biomass\20260303_biomass_test.csv" "$root\data\miaproc_biomass\20260303_biomass_test.csv"
Copy-Item -Force "$repos\miaproc\tests\data\full_output\full_output.csv" "$root\data\miaproc_eddy\full_output\full_output.csv"
Copy-Item -Force "$repos\miaproc\tests\data\biomet\biomet.csv" "$root\data\miaproc_eddy\biomet\biomet.csv"

Copy-Item -Force "$repos\geecomposer\tests\fixtures\sample_aoi.geojson" "$root\data\geecomposer\sample_aoi.geojson"
Copy-Item -Force "$repos\geecomposer\tests\fixtures\multi_feature_aoi.geojson" "$root\data\geecomposer\multi_feature_aoi.geojson"

Copy-Item -Force "$repos\mia-climate\data\rbmn.geojson" "$root\data\mia_climate\rbmn.geojson"

Copy-Item -Force "$repos\mia-lidar\data\polygons\rbmn.geojson" "$root\data\mia_lidar\rbmn.geojson"
Copy-Item -Force "$repos\mia-lidar\data\polygons\rbmnn_extent.geojson" "$root\data\mia_lidar\rbmnn_extent.geojson"
Copy-Item -Force "$repos\mia-lidar\data\rbmn_lidar_chm_mean_10m\DJI_202510141533_004_RBMNNAB0102_chm_mean_10m.tif" "$root\data\mia_lidar\sample_chm_mean_10m.tif"
Copy-Item -Force "$repos\mia-lidar\out\teacher\rbmn\audit_agreement_per_parcel.csv" "$root\data\mia_lidar\audit_agreement_per_parcel.csv"
Copy-Item -Force "$repos\mia-lidar\out\teacher\rbmn\audit_tolerance_sensitivity.csv" "$root\data\mia_lidar\audit_tolerance_sensitivity.csv"
Copy-Item -Force "$repos\mia-lidar\out\teacher\rbmn\manifest.csv" "$root\data\mia_lidar\teacher_manifest.csv"

Copy-Item -Force "$repos\mia-allometric\db\bigquery_unified_schema.json" "$root\data\mia_allometric\bigquery_unified_schema.json"
Copy-Item -Force "$repos\mia-allometric\db\schema_unified.sql" "$root\data\mia_allometric\schema_unified.sql"
Copy-Item -Force "$repos\mia-allometric\db\schema_volume.sql" "$root\data\mia_allometric\schema_volume.sql"

Import-Csv "$repos\mia-occupancy\data-raw\20251211_images_2008653_FC.csv" |
    Select-Object -First 200 |
    Export-Csv "$root\data\mia_occupancy\camera_trap_detections_excerpt.csv" -NoTypeInformation -Encoding UTF8

Import-Csv "$repos\mia-occupancy\data-raw\bquxjob_712c9452_19c2b850b54.csv" |
    Select-Object -First 120 |
    Export-Csv "$root\data\mia_occupancy\weather_daily_excerpt.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Tutorial fixtures refreshed under $root\data"
