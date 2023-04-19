FROM python:latest

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		postgresql-client \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY mysite/ /usr/src/app/
COPY mysite/mysite/.env /usr/src/app/
RUN pip install -r requirements.txt 
RUN apt update && apt install vim

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]