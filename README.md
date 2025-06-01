
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

PDF is attached for further instructions and configuration info.

| 


THIS IS 75% Production ready setup. 
tweaks or mods needed.
docker compose secrets hardening.
due to time constraints i have not hardened the secrets and some issues came while masking the secrets which is in docker-compose file.
Gitea currently does not support the PKCE secret sharing method hence it is disabled. may be it will be added in the future.


 
 

 


