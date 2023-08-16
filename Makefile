install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	pylint --disable=R,C,W1203,W0702 *.py
test:
	python -m pytest -vv *py
format:
	black *.py

all: install lint format test run