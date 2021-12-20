#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.0

requirements:
  ResourceRequirement:
    ramMin: 40000
inputs: []
outputs:
  outfile:
    type: File
    outputSource: wc/counts

steps:
  date:
    run: date.cwl
    in: []
    out: [results]

  wc:
    run: wc.cwl
    in:
      files: date/results
    out: [counts]
