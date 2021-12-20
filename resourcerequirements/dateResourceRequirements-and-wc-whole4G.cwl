#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.0

requirements:
  ResourceRequirement:
    ramMin: 4000
inputs:
  ramSize:
    type: int
    default: 8192

outputs:
  outfile:
    type: File
    outputSource: wc/counts
  

steps:
  date:
    run: date.cwl
    in:
      ramSize: ramSize
    out: [results]

  wc:
    run: wc.cwl
    in:
      files: date/results
    out: [counts]
