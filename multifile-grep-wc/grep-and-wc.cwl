#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.0

requirements:
  - class: ScatterFeatureRequirement
inputs:
  pattern: string
  file_to_search: File[]

outputs:
  outfile:
    type: File
    outputSource: wc/counts

steps:
  grep:
    run: grep.cwl
    in:
      pattern: pattern
      file_to_search: file_to_search
    scatter: file_to_search
    out: [results]

  wc:
    run: wc.cwl
    in:
      files: grep/results
    out: [counts]