# Finding out the underlying platform on which the code shall be run
echo "Finding out if client Operting System"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}


# Installing GolangCI Lint for proper Linting of the GoLang Code
echo "Fetching and installing golangci-lint !!!"
go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.39.0


# Installs and configures Istio for the kubernetes Cluster
echo "Installing Istio (demo profile) for the cluster !!! "
curl -L https://istio.io/downloadIstio | sh 
cd istio*
PATH=$PATH:./bin/istioctl
./bin/istioctl install --set profile=demo -y

# Installing Skaffold
echo "Ïnstalling Skaffold !!! "
if [ ${machine} == "Linux" ]
then
   echo "isntalling skaffold for linux"
   # For Linux AMD64
   curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
   sudo install skaffold /usr/local/bin/
elif [ ${machine} == "Mac" ]
then 
   echo "installing skaffold for mac "
   brew install skaffold   
else
   echo "Only Linux and Mac supported !!!"
fi 

echo "Setup Done !! Good to build & Run the image"