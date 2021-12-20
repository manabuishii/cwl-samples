#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0


# memory 8GB
requirements:
  ResourceRequirement:
    ramMin: $(inputs.ramSize)
inputs: 
  ramSize:
    type: int
    default: 8192
outputs:
  results: stdout

baseCommand: date
