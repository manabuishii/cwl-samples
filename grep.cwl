cwlVersion: v1.0
class: CommandLineTool
baseCommand: grep
inputs:
  pattern:
    type: string
    inputBinding: {position: 0}
  file_to_searc:
    type: File
    inputBinding: {position: 1}
outputs:
  results: stdout
