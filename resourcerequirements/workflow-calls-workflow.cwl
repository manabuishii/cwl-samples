#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.0

#requirements:
#  ResourceRequirement:
#    ramMin: 2000
requirements:
  SubworkflowFeatureRequirement: {}
inputs:
  ramSize:
    type: int
    default: 7000

outputs:
  outfile:
    type: File
    outputSource: wf/outfile
  

steps:
  wf:
    run: ./dateResourceRequirements-and-wc-whole2G.cwl
    in:
      ramSize: ramSize
    out: [outfile]

