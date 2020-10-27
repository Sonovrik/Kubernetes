minikube start  --disk-size='5000mb' --memory='2000mb'
minikube addons enable metallb
minikube addons enable dashboard

eval $(minikube docker-env)

docker build -t phpmyadmin PhpMyAdmin/
docker build -t mysql SQL/
docker build -t wordpress Wordpress/
docker build -t nginx Nginx/
docker build -t influxdb InfluxDB/
docker build -t telegraf Telegraf/
docker build -t ftps Ftp/

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f metallb-config.yaml

kubectl apply -f PhpMyAdmin/phpmyadmin.yaml
kubectl apply -f Wordpress/wordpress.yaml
kubectl apply -f SQL/mysql.yaml
kubectl apply -f Nginx/nginx.yaml
kubectl apply -f InfluxDB/influxdb.yaml
kubectl apply -f Telegraf/telegraf.yaml
kubectl apply -f Ftp/ftps.yaml

minikube dashboard
