# SRE

.
└── sso-infrastructure
    ├── authelia
    │   ├── authelia.log
    │   ├── config
    │   │   └── assets
    │   ├── configuration.yml
    │   ├── db.sqlite3
    │   ├── notification.txt
    │   └── users_database.yml
    ├── deployment.sh
    ├── docker-compose.yml
    ├── generate-passwords.sh
    ├── grafana
    │   ├── grafana-emails
    │   │   ├── alert_notification.txt
    │   │   ├── new_user_invite.txt
    │   │   └── welcome_on_signup.txt
    │   ├── grafana.ini
    │   └── provisioning
    │       ├── dashboards
    │       │   └── dashboards.yml
    │       └── datasources
    │           └── datasources.yml
    ├── loki
    │   └── loki-config.yml
    ├── nginx
    │   ├── conf.d
    │   │   └── default.conf
    │   └── nginx.conf
    ├── prometheus
    │   └── prometheus.yml
    ├── promtail
    │   └── promtail-config.yml
    └── ssl
        ├── fullchain.pem
        └── privkey.pem



THIS WAS FUN :))

This Repo 
Adds Terraform with  ec2 provision and docker installation  &&
 Gitea,Grafana ,NGINX-proxy with-SSO-using-Authelia

BreakDown 

Prerequisites if you want clone this setup 
Terraform for provisioning -optional 
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
tweaks or mods needed 

CA signed certificates from cloudflare or AWS 
a  secreat vault to store the secrets 
docker-compose needs minor tweaks and improvements 
tokens and secrets should be shipped to safe store or vault
 


