FROM python:3.8

RUN pip install streamlit plotly pandas

COPY ./app.py /streamlit/

CMD ["streamlit", "run", "streamlit/app.py", "--server.port", "80"]
# CMD ["streamlit", "run", "streamlit/app.py", "--server.port", "80", "--server.enableCORS", "false", "--server.enableXsrfProtection", "false"]