[![Build Status](https://travis-ci.org/manabuishii/cwl-samples.svg?branch=master)](https://travis-ci.org/manabuishii/cwl-samples)

# HOW TO EXECUTE

```console
cwltool grep-and-count.cwl --file_to_searc mock.txt --pattern one
```

# Validate

## CommandLineTool

```console
cwltool --validate helloworld.cwl
cwltool --validate grep.cwl
cwltool --validate wc.cwl
```

## Workflow

```console
cwltool --validate grep-and-count.cwl
```
