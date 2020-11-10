#!/usr/bin/env cwl-runner
# Generated from: date > date.txt
class: CommandLineTool
cwlVersion: v1.0
baseCommand: date
arguments: []
inputs: []
outputs:
  - id: all-for-debugging
    type:
      type: array
      items: [File, Directory]
    outputBinding:
      glob: "*"
  - id: out
    type: stdout
stdout: date.txt
