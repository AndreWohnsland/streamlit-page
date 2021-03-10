# Streamlit Test App

This is a first Test app with [Streamlit](https://www.streamlit.io/) to get more comfortable with this cool library.
Also the new python [poetry](https://python-poetry.org/) package manager is used to practise with it.

# Getting Started

First install the dependencies with:

```bash
poetry install
or
pip install -r requirements.txt
```

The requirements file was generated with the poetry command:

```bash
poetry export -f requirements.txt --without-hashes --output requirements.txt
```

Then you can run the web app with:

```bash
streamlit run app.py
```

# Using Docker with traefik

The configuration uses https redirect and certificats from lets encrypt.
Since the configuration also uses localhost, lets encrypt wont be able to get the certificats.
You'd need to change localhost to your public domain name.

For the Dashboard use before running the compose:

```bash
export LOGINNAME=admin
export PASSWORD=changethis
export HASHED_PASSWORD=$(openssl passwd -apr1 $PASSWORD)
```
