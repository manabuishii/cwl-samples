cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
requirements:
  DockerRequirement:
      dockerPull: ubuntu:20.04
inputs:
  message:
    type: string
    inputBinding:
      position: 0
outputs:
 hello_output:
   type: stdout
stdout: hello-out.txt

