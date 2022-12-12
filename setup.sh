poetry new .
touch setup.py
pylint --generate-rcfile > .pylintrc
flake8 --generate-config > .flake8
black --config > .black
# Create a new virtual environment
poetry shell
poetry add --dev pylint flake8 black
poetry add --dev pytest pytest-cov
curl -sSL https://raw.githubusercontent.com/obahamonde/misc/main/docker-compose.yml > docker-compose.yml
curl -sSL https://raw.githubusercontent.com/obahamonde/misc/main/serverless.yml > serverless.yml