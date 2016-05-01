FROM python:slim
MAINTAINER rogeriopradoj@gmail.com

ENV GITHUB_TOKEN=update_accordingly

RUN pip install octohatrack

WORKDIR /cache

ENTRYPOINT ["octohatrack"]
CMD ["-h"]
