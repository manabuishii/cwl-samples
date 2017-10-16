class: CommandLineTool
cwlVersion: v1.0

stdout: wcout.txt

inputs:
  files:
    type: File
    inputBinding: {position: 1}
    streamable: true

baseCommand: [wc, -l]

outputs:
  counts: stdout
