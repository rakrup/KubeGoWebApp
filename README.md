# Deploying Application on Kubernetes.

## Introduction 
This repository contains a sample golang web-app and associated code to deploy application on Kubernetes Cluster. 

## Tools Used
* Golang for writing a simple web application. 
* Golangci-lint for perfoming the lint and fixing the code qulaity.
* go tests for running the tests and getting out a coverage report.
* Skaffold to automatically build+test and deploy the image to kubernetes cluster.

# Steps to build
To install the pre-requisites on the client machine

*Run prerequisites* 
``` ./setup_tools.sh ```

Above script setups up the platform and devtools - should install golangci-lint, skaffold and istio on the client machine and kubernetes cluster. 

*Run skaffold* 
``` skaffold run ```

Using Skaffold, this command would do the build/test/deploy of the application on to the cluster.

## Access the application
Open up a browser and hit the localhost url to access the application

## Access monitoring/metrics, etc via Kiali
Run
``` istioctl dashboard kiali ```

To access Grafana
``` istioctl dashboard grafana ```

To access Prometheus
``` istioctl dashboard prometheus ```

## Note
The above commands have been testing on a Macintosh OS and works fine with Istio 1.9.4, Skaffold v1.23.0