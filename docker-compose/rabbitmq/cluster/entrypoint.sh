docker-compose exec rabbitmq2 rabbitmqctl stop_app

docker-compose exec rabbitmq2 rabbitmqctl join_cluster --ram rabbit@rabbitmq1

docker-compose exec rabbitmq2 rabbitmqctl start_app

docker-compose exec rabbitmq3 rabbitmqctl stop_app

docker-compose exec rabbitmq3 rabbitmqctl join_cluster rabbit@rabbitmq1

docker-compose exec rabbitmq3 rabbitmqctl start_app