#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0

# wc is not specified memory usage
inputs:
  files:
    type: File
    inputBinding: {position: 1}
    streamable: true

baseCommand: [wc, -l]

outputs:
  counts: stdout
