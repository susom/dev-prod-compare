FROM python:3.12.0a3-slim-bullseye

ADD compare.sh .

RUN pip install PyYAML requests texttable Gitpython

RUN apt-get update && \
    apt-get install -y \
        openssh-server \
        git

RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan github.com > /root/.ssh/known_hosts

RUN chmod 777 /compare.sh
