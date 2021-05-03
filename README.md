# KubeGoWebApp
---
# Deploying Application on Kubernetes.

## Introduction 
This repository contains a sample golang web-app and associated code to deploy application on Kubernetes Cluster. 

## Tools Used
* Golang for writing a simple web application. 
* Golangci-lint for perfoming the lint and fixing the code qulaity.
* go tests for running the tests and getting out a coverage report.
* Skaffold to automatically build+test and deploy the image to kubernetes cluster.

# Steps to build
(Assumption : You already have a kubernetes cluster built and the kubeconfig is pointing to it)
To install other pre-requisites on the client machine, run the automated script below.

*Run prerequisites* 

 ` ./setup_tools.sh `

Above script setups up the platform and devtools - should install golangci-lint, skaffold and istio on the client machine and kubernetes cluster. 
Now we are ready to build, run unit tests and deploy out application on to kubernetes.Use the skaffold command given below. 

*Run skaffold* 

 ` skaffold run `

(Tip: can use skaffold dev to put a watch on the code, if there are any changes skaffold will automatically redeploy the application with the changes)
Using Skaffold, above mentioned command would do the build/test/deploy of the application on to the cluster. One the deploy is complete your application should be up and running on the cluster. 

---

## Access the application
Open up a browser and hit the localhost url to access the application

[http:localhost](http://localhost/goapp)

---

## Access monitoring/metrics, etc via Kiali
Since we have deployed the service mesh, after hitting the above localhost endpoint 5-10 times you can open observability and monitoring dashboards below using the commands mentioned.

Access Kiali Dashboard 

 ` istioctl dashboard kiali `

To access Grafana

` istioctl dashboard grafana `

To access Prometheus

` istioctl dashboard prometheus `

---

## Note
The above commands have been testing on a Macintosh OS and works fine with Istio 1.9.4, Skaffold v1.23.0