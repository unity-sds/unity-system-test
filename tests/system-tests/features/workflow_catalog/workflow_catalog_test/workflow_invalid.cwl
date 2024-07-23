#!/usr/bin/env cwl-runner
$namespaces:
  cwltool: http://commonwl.org/cwltool#
class: Workflow
cwlVersion: v1.2
inputs:
  parameters:
    type:
      fields: {}
      type: record
outputs: {}
requirements:
  InlineJavascriptRequirement: {}
  NetworkAccess:
    networkAccess: true
  StepInputExpressionRequirement: {}
  SubworkflowFeatureRequirement: {}
steps:
