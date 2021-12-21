# gcp_task2
For this task a service account with permissions for create GKE cluster and network was created. I used different files to create the task points:

auth.tf: file used to authenticate with the GCP project: miprimerproyecto-333317 and can create the cluster gke-task2-gke in the location us-central1-b.

versions.tf: fiules used to specify the allowed versions of terraform in that project.

main.tf: that file content the code to create the VPC network for the GKE cluster named: gke-network with a subnet named: gke-subnet and two ranges named: gke-subnet-secondary-01 (192.168.64.0/24) and gke-subnet-service (192.168.75.0/24).

backend.tf: file used to create a GCS backent with terraform.

cluster.tf:file used to create a zonal cluster named gke-task2-gke, in the zone us-central1-b, with 2 nodes, type n1-standard-1 and without autoscalation.

For the deployment od the 2 apps (NGINX and Ghost) the files provider.tf, nginx.tf, ghost.tf was used.

provider.tf: file to specify the provoders used for that project, like helm and kubernetes.

ghost.tf: file used to deploy the ghost app with service type NodePort, and the host: ghost.test, a repo from bitname was used for that step.

nginx.tf: file used to deploy nginx service type]: NodePort and host:nginx.test, a repo from bitnami was iused for that step.

ingres-ghost-nginx.tf: that file specify the traffic ingress for both apps (ghost & nginx) in the port 80.

For that task I experimenten an error that I need to make a changes in the ingress that involve to destroy and create it againg to fix it, that induce an stranges issues with GCP when start to creat again the ingress, afetr a troubleshooting sesions we found that GCP has issues to create a ingress with teh same name that the deleted, so I had to rename the ingress to can create a new one.

Thats the infra created:

![image](https://user-images.githubusercontent.com/95724419/147011020-06db9e3e-0783-4b95-b8c8-764bf77924c9.png)
