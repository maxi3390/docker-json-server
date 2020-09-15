build:
	docker build -t maxi3390/json-server .

run:
	docker run --rm --name json-server -p 3000:3000 -v `pwd`:/data maxi3390/json-server --watch db.json

rund:
	docker run --rm --name json-server -d -p 3000:3000 -v `pwd`:/data maxi3390/json-server --watch db.json

stop:
	docker stop json-server
