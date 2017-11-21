cwlVersion: v1.0
class: Workflow
inputs:
  grep_pattern:
    type: string
  target_file:
    type: File
outputs:
  counts:
    type: File
    outputSource: wc/counts
steps:
  grep:
    run: grep.cwl
    in:
      pattern: grep_pattern
      file_to_search: target_file
    out: [results]
  wc:
    run: wc.cwl
    in:
      file: grep/results
    out: [counts]

