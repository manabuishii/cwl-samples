cwlVersion: v1.0
class: CommandLineTool
baseCommand: [wc, -l]
inputs:
  file:
    type: File
    inputBinding:
      position: 0
outputs:
  counts: stdout
stdout: wcout.txt

