---
title: Marcus Holtz
linkcolor: blue
pdf-engine: xelatex
classoption: "12pt"
---

[holtzweb.com](https://holtzweb.com)       | |  Littleton, CO 
--------- | -------- | --------
(217) 260 - 7188    | |  marcusaholtz@gmail.com


**Systems Engineer in Linux, virtualization, networking, containers, automation, and development.**



# Resume Info

This resume has been created in a **[dockerfile](https://github.com/MarcusHoltz/resume-generator/blob/main/dockerfile)** built by a **[makefile](https://github.com/MarcusHoltz/resume-generator/blob/main/makefile)** and deployed using **[Github Actions' CI/CD](https://github.com/MarcusHoltz/resume-generator/blob/main/.github/workflows/docker-image.yml)**. The document is published everyday, with a timestamp at the last page denoting it's publishing date.

- - Download this document: [https://github.com/MarcusHoltz/resume-generator/](https://github.com/MarcusHoltz/resume-generator/)


# Skills


## Linux System Administration
- • Maintain a reliable and secure hybrid cloud environment for development and serving resources using tools such as SSH/tunneling, SSL, UDP hole punching, VPN, and single sign-on identity management. 
- • Monitor and log: performance monitoring, network bandwidth usage, memory allocation, hard drive status, and application uptime using Glances, Netdata, Prometheus, Grafana, ELK stack, & Diskover.
- • Cross-platform systems administration experience: Ability to install, configure, maintain, and document a variety of production-level Unix based systems: Debian, CentOS, Ubuntu, FreeBSD.


## Virtualization
- • System virtualization platforms: Docker, QEMU, KVM - with virt-io's 9p filesystem to increase io speed.
- • Created system templates for cloning, backing up, and restoring servers across multiple platforms and formats: CentOS, Ubuntu, FreeBSD, Debian in vmdk, vdi, vhdx, qcow2, & raw filetypes.


## Containers
- • Create, build, deploy containers using LXC and containerd using: docker, dockerfile, docker compose, docker networking, docker hub, github, github actions, proxmox.
- • Experience with distributed storage technologies like NFS, Ceph, S3 as well as dynamic resource management frameworks: Kubernetes, Docker Swarm.


## Servers
- • Deployment and management of headless, bare metal servers in off site datacenter using the model: 
- Debian image > Proxmox baremetal > isolated containers > pfsense routing > haproxy > public internet
- • Configured and deployed ssl certificate management with reverse proxy, added SecurityOnion as an IDS within virtualized infrastructure with additional SPAN port to duplicate internal traffic.


## Disaster Recovery
- • Built, configured, tested, and deployed Proxmox high availability ZFS solution featuring: Incremental 15min snapshotting for disaster recovery using [PBS2, cv4pve and Sanoid](https://github.com/MarcusHoltz/proxmox-automatic-backups).
- • Developed and maintain system backup infrastructure including individual machine images, datastores, and off-site backups. 


## DevOps
- • Ansible, Cloud infrastructure (AWS prefered), KVM, Terraform, Helm
- • Experience with the core AWS services, including ALB, ELB, EC2, RDS, and S3.
- • A proactive approach to spotting problems, areas for improvement, and performance bottlenecks.


## Networking (virtual and physical)
- • Documentation: Details with visuals of network infrastructure, system architecture, process, and policies. 
- • Virtual Routing: Administered networking in virtualized environments, including virtualized edge routing with pfSense.
- • Technologies used: Linux, OpenVSwitch, SPAN port for SecurityOnion, VLAN segregation, DNS, BIND, VPNs, DNSoverTLS, 
- • Installation of virtual network infrastructure using: VMware ESXi, Proxmox, Hyper-V, and Xen.


## Domain Administration
- • Active Directory, SCCM, Domain Trust, Domain Controller, FSMO roles, Active Director Replication, Group Policy, OpenLDAP, RADIUS
- • Identity Management and Single sign-on (SSO) (Kerberos, OAuth2, and OpenID Connect; Keycloak)


## Data Analytics
- • Created actionable reports weekly/monthly to customers and team members. Keeping them informed of how their efforts were going, what they should expect, allowing us to make data-driven decisions -- all with visuals and detailed explinations. 
- • Keep metrics of every varriety, to allow cross-referencal contrasts. 
- • Love to set up A/B tests to see analytics and insights in action


## Project Ownership
- • I love to solve problems: Often taking the broad look to spot issues and inefficiencies from a mile away, backing them with suggested solutions, and personally implementing them. 
- • Personal pride in my work to ensure that every customer has a great experience with what I build.
- • Work with many kinds of clients, in a wide variety of fields. 


## Research
- • Able to find a solution through vendor documentation, question and answer websites, and related forums. 
- • Excelent at researching client's brands, industries, and markets to very quickly come up with a plan to fit their needs. 
- • Experience architecting system layouts. 


## Web Development
- • Designed and built custom website layout/user interfaces and custom backend software to meet project deadline/requirements. 
- • Integrated data from various back-end services and databases:
- - election data, employee database, interactive event map 
- • Fixed broken installs, hacked sites, busted databases, and never-been-updated themes/plugins.







# Technical Projects

## Homelab
 [My homelab](https://docs.google.com/spreadsheets/d/e/2PACX-1vSi5v2k_D79Qt8x_NAfr766UzHH1ddsXiPcn0Epben6a6TGPmGV-ywPLrpR4mmk575Pt3c4XSK-3EI2/pubhtml?gid=1093046237&single=true) features [VLAN network segregation](https://docs.google.com/spreadsheets/d/1wGjdCJFOPo7gF1jrSo6Y9S_uc8N1rTyLKcYWGcmCcBk/edit?usp=sharing), 6 VMs, ~100 containers, and multi-tier snapshoting.




# Presentations

## Browser Privacy
**The goal of this talk is to put you in control.**

Understand what data is collected by the tools you use and decide if you want to share it. Then use methods provided here to opt-in or opt-out.

 - \* BLUG (Boulder Linux Users Group) - [11/10/22](https://www.meetup.com/boulder-linux-users-group-blug/events/pqbkrqydcpbnb/)

 - \* SFS (Software Freedom School) - [9/3/22](https://www.meetup.com/sofreeus/events/287663325/)

- - - - [Link to Slides](https://nextcloud.sofree.us/index.php/s/L4cP2rzXZQgBisp) | [Link to Video](https://nextcloud.sofree.us/index.php/s/6ntcY6iyDSnyLBZ)


## Opensource Firmware on Routers
**What can Opensource do for home consumer routers?**
OpenWRT supports more than 1,500 devices most capable of the line enterprise features: Bandwith Monitoring, Guest Portal, Cloudbased IPS.

 - \* SFS (Software Freedom School) - [4/1/23](https://www.meetup.com/sofreeus/events/292349413/)

- - - - [Link to Slides](https://www.holtzweb.com/openwrt-presentation.html) | [Link to Markdown](https://nextcloud.sofree.us/index.php/s/WWkasZJR8sT9RXj)



## Mastodon
**Self-Hosted, Open Source, Federated, Decentralized... social media?**
Mastodon is software for running different, connected social networking services with microblogging features.

 - - \* SFS (Software Freedom School) - [12/3/22](https://www.meetup.com/sofreeus/events/289682203/)

- - - - [Link to Slides](https://nextcloud.sofree.us/index.php/s/rzi7Jr6DmATHyoE) | [Link to Video](https://nextcloud.sofree.us/index.php/s/eEkBPKgTw4aQRDH)




# Leadership Activies


## Software Freedom School


- • Software Freedom School board member since March 2023

- • Maintain open tickets for [SysOps board](https://gitlab.com/sofreeus/sfs-sysops/-/boards)

- • Presented at monthly community meetings

- • Team Member in weekly Linux study group


## Carbondale SIU

- • Built and managed Saluki Student Investment Firm website




# Industry Experience


## IT and Web Consultation / Freelancing


**Holtzweb, Denver, CO**  -  **2019 - Present**

- • Established clients’ cloud based hosting environments, virtualization, and operations infrastructure.
- • Strategized SEO/SEM campaigns across web presence including blogs, email newsletters, ads & promotions resulting in a large increase in face to face traffic and web traffic.



## Web Development


**1187, Mayer Networks, Carbondale, IL**  -  **2014 - 2016**

- • Created and designed custom website layout/user interfaces
- • Integrated data from various back-end services and databases
- - election data, employee database, interactive event map 
- • Worked directly with clients to facilitate business and marking needs
- • Executed tests, analyzed data to identify trends and insights using analytics tools and 3rd party optimization tools
- • Ensured all site development follows web standards and ADA compliance for accessibility.
- • Executed SEO-based initiatives, including website analytics and optimization.
- • Fixed broken installs, hacked sites, busted databases, and never-been-updated themes/plugins.
- • Repaired, updated, and redesigned new & existing sites.
- • Designed custom website layout/user interfaces and custom backends to meet project deadline/requirements. 


# Education and Training
**2011**  -  *BS in Finance*
Southern Illinois University

*Linux Foundation Certified System Administrator (LFCS): expected July 24th*



# Tools

## Software Used
Linux, bash scripting, Python, HTML, CSS, JavaScript, MySQL, Apache, Nginx, HAProxy, Traefik, Samba, Windows Server, Active Directory, GIT, VMWare vSphere, ESXi, libvert, QEMU, KVM, Xen, Hyper-V, Nagios, Docker, Vagrant, Ansible, Jenkins, Puppet, Chef, SaltStack, Helm, Kubernetes, Terraform, AWS, GCP, Oracle Cloud, Microsoft Azure, Private Cloud Hosting, Red Hat Linux (RHEL), CentOS, Debian, Ubuntu, OpenSUSE, Android, Adobe Photoshop


### Web Development Tools


- • CMS: WordPress, Drupal, DNN, Joomla

- • SEO: Google Analytics, Piwik, MOZ, SEMRush, Megalytic

- • Design: Adobe Creative Cloud: After Effects, Illustrator, Photoshop

- • Webserver: Apache, Nginx

- • Database: MySQL,Postgres, MariaDB, Redis, MongoDB

- • CSS Boilerplate: Bootstrap, Foundation, Tailwind

- • Cloud: Azure, AWS, DigitalOcean, Cloudflare


