class: Workflow
cwlVersion: v1.0

inputs:
  pattern: string
  file_to_searc: File

outputs:
  results:
    type: File
    outputSource: grep/results
  counts:
    type: File
    outputSource: wc/counts

steps:
  grep:
    run: grep.cwl
    in:
      pattern: pattern
      file_to_searc: file_to_searc
    out: [results]

  wc:
    run: wc.cwl
    in:
      files: grep/results
    out: [counts]
