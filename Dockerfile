FROM python:3.6-buster
LABEL maintainer="codyzacharias@pm.me"

WORKDIR /root

RUN git clone --depth=1 https://github.com/vhidvz/twint.git && \
	cd /root/twint && \
	pip install -r requirements.txt && \
	python setup.py install

CMD /bin/bash
