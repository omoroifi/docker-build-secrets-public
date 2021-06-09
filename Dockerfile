FROM debian:buster

RUN apt-get update && apt-get install -y git

RUN git config --global credential.helper \
    '!f() { \
        echo "username=x-access-token"; \
        echo "password=$(cat /run/secrets/github_token)"; \
    }; \
    f'
RUN --mount=type=secret,id=github_token git clone https://github.com/omoroifi/docker-build-secrets

COPY hello-world.sh .

CMD ["./hello-world.sh"]
