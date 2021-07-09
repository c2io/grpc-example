# grpc

## poetry

poetry add failed not use ~/.pip/pip.conf

```yaml
[[tool.poetry.source]]
name = "pypi-private"  # This name will be used in the configuration to retreive the proper credentials
url = "https://pypi.tuna.tsinghua.edu.cn/simple/"
```

## proto

```bash
poetry run python -m grpc_tool.protoc -I config --python_betterproto_out=app/generated config/example.proto
```

## run

### server
```bash
poetry run python app/message_server.py
```
