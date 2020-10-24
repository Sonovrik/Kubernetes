minikube start  --disk-size='5000mb' --memory='2000mb'
minikube addons enable metallb
minikube addons enable dashboard

eval $(minikube docker-env)

docker build -t phpmyadmin PhpMyAdmin/
docker build -t mysql SQL/

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f metallb-config.yaml

kubectl apply -f PhpMyAdmin/phpmyadmin.yaml
kubectl apply -f SQL/mysql.yaml

minikube dashboard
