cwlVersion: v1.0
class: Workflow
inputs:
  pattern: string
  file_to_search: File # file_to_searchは、こちらで決めた名前である。
outputs:
  counts:
    type: File
    outputSource: wc/counts
steps:
  grep:
    run: grep.cwl
    in:
      pattern: pattern
      file_to_search: file_to_search
    out: [results]
  wc:
    run: wc.cwl
    in:
      file: grep/results
    out: [counts]

