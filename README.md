# docker-xk6-kafka

An image of [xk6-kafka](https://github.com/mostafa/xk6-kafka).

## Usage

```bash
docker run -i paradisehell/xk6-kafka:1.0.0 /go/bin/k6 run path-to-your-script
```

### Example

```bash
docker run -i \
-v "$(pwd)"/script/test_json.js:/opt/script/test_json.js \
paradisehell/xk6-kafka:1.0.0 \
/go/bin/k6 run /opt/script/test_json.js
```
