```
cwltool grep-and-count.cwl --file_to_searc mock.txt --pattern one
```

# Validate

## CommandLineTool

```
schema-salad-tool /usr/local/lib/python2.7/dist-packages/cwltool/schemas/v1.0/CommandLineTool-standalone.yml hello.cwl
schema-salad-tool /usr/local/lib/python2.7/dist-packages/cwltool/schemas/v1.0/CommandLineTool-standalone.yml grep.cwl
schema-salad-tool /usr/local/lib/python2.7/dist-packages/cwltool/schemas/v1.0/CommandLineTool-standalone.yml wc.cwl
```

## Workflow

```
schema-salad-tool /usr/local/lib/python2.7/dist-packages/cwltool/schemas/v1.0/Workflow.yml grep-and-count.cwl
```
