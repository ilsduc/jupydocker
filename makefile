build: 
	docker-compose build
start: 
	docker-compose up -d
	make list
list:
	docker exec -it jupydocker bash -c 'jupyter notebook list'
stop: 
	docker-compose down
connect: 
	docker exec -it jupydocker bash
status: 
	docker ps | grep jupydocker
