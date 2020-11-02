minikube start --vm-driver=virtualbox
minikube addons enable metallb
minikube addons enable dashboard

eval $(minikube docker-env)

docker build -t nginx srcs/Nginx/
docker build -t mysql srcs/Mysql/
docker build -t phpmyadmin srcs/PhpMyAdmin/
docker build -t wordpress srcs/Wordpress/
docker build -t telegraf srcs/Telegraf/
docker build -t influxdb srcs/InfluxDB/
docker build -t ftps srcs/Ftps/
docker build -t grafana srcs/Grafana/

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.4/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.4/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/metallb-config.yaml

kubectl apply -f srcs/Nginx/nginx.yaml
kubectl apply -f srcs/Mysql/mysql.yaml
kubectl apply -f srcs/PhpMyAdmin/phpmyadmin.yaml
kubectl apply -f srcs/Wordpress/wordpress.yaml
kubectl apply -f srcs/Telegraf/telegraf.yaml
kubectl apply -f srcs/InfluxDB/influx.yaml
kubectl apply -f srcs/Ftps/ftp.yaml
kubectl apply -f srcs/Grafana/grafana.yaml


minikube dashboard
