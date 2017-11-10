cwlVersion: v1.0
class: CommandLineTool
baseCommand: [wc, -l]
inputs:
  files:
    type: File
    inputBinding: {position: 1}
    streamable: true
outputs:
  counts: stdout
stdout: wcout.txt
