#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0


# memory 8GB
requirements:
  ResourceRequirement:
    ramMin: 8192
inputs: []
outputs:
  results: stdout

baseCommand: date
