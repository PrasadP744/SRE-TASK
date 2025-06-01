
# SRE-View the file in RAW mode 

Stacks : 
## Terraform 
Docker >>
includes
🔴 Redis
🔧 Gitea
📊 Grafana
📝 Loki
🌐 Nginx
📈 Prometheus
📋 Node Exporter
📄 Promtail



THIS WAS FUN :))
##changing the image version and  other configurations may brake the OIDC auth and also the cluster uptime.##

This Repo 
Adds Terraform with  ec2 provision and docker installation  &&
 Gitea,Grafana ,NGINX-proxy with-SSO-using-Authelia

BreakDown 

Prerequisites if you want clone this setup 
Terraform for provisioning -optional 
self signed certificate
An AWS Account (here I have Used AWS Public DNS >>Worked great in my case) You can use Cloudflare ,or any DNS provider who has Authentic signed CA 
t2.micro  a 2GB ram server with 4vCPU  you can use any Linux based distro  RHEL,Cent os ,Amazon AMI 2  


| Service | Image | Version | Purpose |
|---------|-------|---------|---------|--------|
| **Authelia** | authelia/authelia:4.39.4 | 4.39.4 | Authentication & Authorization | 
| **Gitea** | gitea/gitea:1.23.8 | 1.23.8 | Git Repository Management | 
| **Grafana** | grafana/grafana:11.4.2 | 11.4.2 | Monitoring & Dashboards | 
| **Loki** | grafana/loki:latest | Latest | Log Aggregation |
| **Nginx** | nginx:alpine | Alpine | Reverse Proxy | 
| **Prometheus** | prom/prometheus:latest | Latest | Metrics Collection | 
| **Node Exporter** | prom/node-exporter:latest | Latest | System Metrics | 
| **Promtail** | grafana/promtail:latest | Latest | Log Shipping | 
| **Redis** | redis:alpine | Alpine | Session Storage | 


THIS IS 75% Production ready setup. 
tweaks or mods needed.
docker compose secrets hardening.
due to time constraints i have not hardened the secrets and some issues cam ewhile masking the secrets which is in docker-compose file.
Gitea currently doesnot support the PKCE secret sharing method hence it is disabled. may be it will be added in the future.


 
 

 


