#!/usr/bin/env cwl-runner
baseCommand:
- DOWNLOAD
class: CommandLineTool
cwlVersion: v1.2
inputs:
  download_type:
    type: string
  edl_password:
    type: string
  edl_password_type:
    default: BASE64
    type: string
  edl_username:
    type: string
  stac_json:
    type: File
outputs:
  stage_in_collection_file:
    outputBinding:
      glob: stage-in-results.json
    type: File
  stage_in_download_dir:
    outputBinding:
      glob: .
    type: Directory
requirements:
#  DockerRequirement:
#    dockerPull: ghcr.io/unity-sds/unity-data-services:5.3.1
  EnvVarRequirement:
    envDef:
      DOWNLOAD_DIR: $(runtime.outdir)
      DOWNLOAD_RETRY_TIMES: '5'
      DOWNLOAD_RETRY_WAIT_TIME: '30'
      EDL_BASE_URL: https://urs.earthdata.nasa.gov/
      EDL_PASSWORD: $(inputs.edl_password)
      EDL_PASSWORD_TYPE: $(inputs.edl_password_type)
      EDL_USERNAME: $(inputs.edl_username)
      GRANULES_DOWNLOAD_TYPE: $(inputs.download_type)
      LOG_LEVEL: '20'
      OUTPUT_FILE: $(runtime.outdir)/stage-in-results.json
      PARALLEL_COUNT: '-1'
      STAC_JSON: $(inputs.stac_json.path)
