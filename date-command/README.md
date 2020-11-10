# How to create CWL file with zatsu-cwl-generator

```
docker run --rm ttanjo/zatsu-cwl-generator:v1.0.6 "date > date.txt" > date_command.cwl
```

## How to create CWL cwltool environment

```
python3 -m venv venv
source venv/bin/activate
```

```
pip install cwltool
```

### Setup your env

If you need, activate environment.

```
source venv/bin/activate
```

### How to verify

```
cwltool --validate date-command.cwl
```

Expected output:

```
date-command.cwl is valid CWL.
```

### How to execute CWL

```
cwltool date-command.cwl
```

Expected output (lastline)

```
INFO Final process status is success
```