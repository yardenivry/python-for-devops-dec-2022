install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

post-install:
	pythom -m textblob.download_corpora
		
lint:
	pylint --disable=R,C *.py devopslib
	
test:
	python -m pytest -vv --cov=devopslib test_*.py

format:
	black *.py devopslib/*.py

build:
	docker build -t deploy-fastapi
	
# run:
	

deploy:
	aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 222173270595.dkr.ecr.us-west-2.amazonaws.com
	docker build -t devops-dec-2022 .
	docker tag devops-dec-2022:latest 222173270595.dkr.ecr.us-west-2.amazonaws.com/devops-dec-2022:latest
	docker push 222173270595.dkr.ecr.us-west-2.amazonaws.com/devops-dec-2022:latest

all: install post-install test format deploy