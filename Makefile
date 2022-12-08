<<<<<<< HEAD
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
lint:
	pylint --disable=R,C *.py devopslib
	
test:
	python -m pytest -vv --cov=devopslib test_*.py

format:
	black *.py devopslib/*.py

all: install, test, format
	
=======
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
lint:
	pylint --disable=R,C *.py devopslib
	
test:
	python -m pytest -vv --cov=devopslib test_*.py

format:
	black *.py devopslib/*.py

all: install, test, format
>>>>>>> 2adbad84b1a7e2a10e9e99053287335382354555
