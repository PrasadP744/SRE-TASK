
##  

 ## Stacks :

Component Overview:
---
1.Terraform - Infrastructure provisioning
2.Docker - Containerisation
3.NGINX Reverse Proxy - Entry point for all external traffic
4.Authelia SSO - Centralized authentication and authorization
5.Redis - Session storage for Authelia
6.Gitea - Git repository management
7.Grafana - Data visualization and dashboards
8.Prometheus - Metrics collection and storage
9.Promtail - Log collection agent
10.Loki - Log aggregation and storage
---
NODE EXPORTER IS OPTIONAL


##changing the image version and  other configurations may brake the OIDC auth and also the cluster uptime.##

This Repo                                            
Adds Terraform with  ec2 provision and docker installation  &&
Gitea,Grafana ,NGINX-proxy with-SSO-using-Authelia

BreakDown  & setup PDF is attached for further instructions and configuration info.

| 


THIS IS 75% Production ready setup. 
tweaks or mods needed>>>
Terraform state file is not saved in any backend here . made it for one time use only .(for production)
docker compose secrets hardening. (for production)
for the  better understanding to the viewer or to clone this setup I did not masked any secrets or 
Gitea currently does not support the PKCE secret sharing method hence it is disabled. may be it will be added in the future.

 THIS WAS FUN :))
 
 

 


