# Monitoring and Log Collection

- [x] Prometheus
- [x] Grafana
- [x] Loki

## Run Grafana

```bash
docker run -d -p 3000:3000 --name=grafana grafana/grafana-oss
docker run -d --name=loki -p 3100:3100 grafana/loki
```
