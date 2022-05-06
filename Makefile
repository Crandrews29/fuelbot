clean:
	rm -rf __pycache__
	rm -rf venv

reqs: requirements.txt venv
	venv/bin/pip install -r requirements.txt

run: reqs
	venv/bin/python fuelbot/fuelbot.py

venv:
	python3 -m venv venv