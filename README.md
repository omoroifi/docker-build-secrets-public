# docker build secrets (public)

This is a public repository hosting the example code for the corresponding [blog
post](https://omoroi.fi/docker-build-secrets-first-impressions/).

For the code to work as is, you need a read token to be able to access the private repository at:
https://github.com/omoroifi/docker-build-secrets

Instead, you can modify the code to use your own private repository.

The commands to run the example are as follows:

```
echo "${TOKEN}" >github_token
export DOCKER_BUILDKIT=1
docker build --secret id=github_token,src=github_token -t docker-build-secret .
```
