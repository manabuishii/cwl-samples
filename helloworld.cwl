cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
inputs:
  message:
    type: string
    inputBinding:
      position: 1
outputs:
 hello_output:
   type: stdout
stdout: hello-out.txt

