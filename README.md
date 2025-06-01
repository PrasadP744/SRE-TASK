# SRE-View the file in RAW mode 


![Screenshot 2025-05-31 211233](https://github.com/user-attachments/assets/f4d7651b-caeb-4754-9be3-f3cb6cd0b74d)




![Screenshot 2025-05-31 172149](https://github.com/user-attachments/assets/22eb8dc5-6ee1-42e9-8918-32aea6551a5c)



![Screenshot 2025-05-31 160158](https://github.com/user-attachments/assets/183250d3-3a12-4203-961b-24f88e375cf6)

![Screenshot 2025-05-31 160158](https://github.com/user-attachments/assets/21f422a6-ccf5-47bc-867f-2e9a54ffb0b0)

![Screenshot 2025-05-31 160225](https://github.com/user-attachments/assets/bcc5458e-b889-4afb-9b53-05d13c20f444)



![Screenshot 2025-05-31 153632](https://github.com/user-attachments/assets/c1423e40-bcf8-4591-91dc-6b174fec682e)

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



├── README.md
├── sso-infrastructure
│   ├── authelia
│   │   ├── authelia.log
│   │   ├── config
│   │   │   └── assets
│   │   ├── configuration.yml
│   │   ├── configuration.yml.bkp
│   │   ├── db.sqlite3
│   │   ├── notification.txt
│   │   └── users_database.yml
│   ├── certs
│   │   └── ca-certificates.crt
│   ├── deployment.sh
│   ├── docker-compose.yml
│   ├── extras
│   │   ├── fullchain.pem
│   │   └── privkey.pem
│   ├── generate-passwords.sh
│   ├── grafana
│   │   ├── grafana-emails
│   │   │   ├── alert_notification.txt
│   │   │   ├── new_user_invite.txt
│   │   │   └── welcome_on_signup.txt
│   │   ├── grafana.ini
│   │   └── provisioning
│   │       ├── dashboards
│   │       │   └── dashboards.yml
│   │       └── datasources
│   │           └── datasources.yml
│   ├── loki
│   │   └── loki-config.yml
│   ├── nginx
│   │   ├── conf.d
│   │   │   └── default.conf
│   │   └── nginx.conf
│   ├── prometheus
│   │   └── prometheus.yml
│   ├── promtail
│   │   ├── promtail-config.yml
│   │   └── promtail-config.yml.bkp
│   └── ssl
│       ├── cert.conf
│       ├── fullchain.pem
│       └── privkey.pem
└── terraform
    ├── main.tf
    ├── outputs.tf
    ├── provider.tf
    └── variables.tf



THIS WAS FUN :))

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
tweaks or mods needed 

CA signed certificates from cloudflare or AWS 
a  secreat vault to store the secrets 
docker-compose needs minor tweaks and improvements 
tokens and secrets should be shipped to safe store or vault

 


