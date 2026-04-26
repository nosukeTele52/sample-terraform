FROM hashicorp/terraform:latest
WORKDIR /workspace
COPY ./terraform .
ENTRYPOINT ["/bin/sh"]
