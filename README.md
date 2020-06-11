# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~535MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1-alpine-3.12.0
2020/06/11 11:52:59 [INFO] ▶ Start clair-scanner
2020/06/11 11:53:04 [INFO] ▶ Server listening on port 9279
2020/06/11 11:53:04 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 11:53:04 [INFO] ▶ Analyzing 2b0ea4b93f47688bf27425f51852d7387c024a07c8497f54659fa1f12cc6d18c
2020/06/11 11:53:05 [INFO] ▶ Analyzing 5a3d43915b87af7c9da9aef550d180f442c7d88834d1142a422a8478ea1bdf9e
2020/06/11 11:53:05 [INFO] ▶ Analyzing 460b62f55cb236c57ed7534363469ae3af57fc38e4cb94b83c54eb67ba2d4c52
2020/06/11 11:53:05 [INFO] ▶ Analyzing 004f0abda41dda09fe48b8b39f31f4113b4dbbdbc3425d1ca86a5076f1f903a4
2020/06/11 11:53:05 [INFO] ▶ Analyzing c46223c689aab581f97f4ceaa8f36c0f00661431675960cc7d8f00d5b0235682
2020/06/11 11:53:05 [INFO] ▶ Analyzing 364c84b408eb70ff631bdeea6ab8edc4f9fea5b2352a9e721a4b12c10407bb64
2020/06/11 11:53:05 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/teamcity-agent:2020.1-alpine-3.12.0
2020-06-11T08:53:08.108Z        INFO    Need to update DB
2020-06-11T08:53:08.108Z        INFO    Downloading DB...
2020-06-11T08:53:18.918Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1-alpine-3.12.0 (alpine 3.12.0)
================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.34GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.1
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.1
2020/06/11 11:53:25 [INFO] ▶ Start clair-scanner
2020/06/11 11:53:50 [INFO] ▶ Server listening on port 9279
2020/06/11 11:53:50 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/06/11 11:53:50 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/06/11 11:53:50 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/06/11 11:53:50 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/06/11 11:53:50 [INFO] ▶ Analyzing c49028ca3032013fb4b222de627272dbeb7ecdff6828d2561eb792de93f9664d
2020/06/11 11:53:50 [INFO] ▶ Analyzing abe66352c3779bd54f807322d43e5d1ecc240a03a0c32bf651eb237b0ea57a21
2020/06/11 11:53:50 [INFO] ▶ Analyzing 19b1a1bf8f690927ea4eb372fc84a1fd3dd1f20eed013dadd2171478f3fdc9c9
2020/06/11 11:53:50 [INFO] ▶ Analyzing f2e5315f33b02f24863c516244d47ba21493d43c022493d667a48618d5f209c1
2020/06/11 11:53:50 [INFO] ▶ Analyzing af15e3deca57f8bb8b480c1bb11546ebe3da18eb1a799aa20f92d94b427ad62d
2020/06/11 11:53:50 [INFO] ▶ Analyzing a73d8855cab2a64c2a973be9b48cf3c6aad84f19eeb2f7d06b853f589ffd3a08
2020/06/11 11:53:50 [INFO] ▶ Analyzing 5bb92d091b2106d869b1eceb7c5403daa6e0ab78566e17eb13fa8f8273ae6828
2020/06/11 11:53:50 [INFO] ▶ Analyzing 6c828cc85fb564bf1890656b4a009b9cc5f84c0f20303b45ce480c91f48e3406
2020/06/11 11:53:50 [INFO] ▶ Analyzing 2ed7fc00370c71952fec1f4fda2d46d963e9414e32bbaa530520e2e19468ebb1
2020/06/11 11:53:50 [INFO] ▶ Analyzing b546b0246dec5b8930baefe69156c832bc0c28490df5c6f58debb564b9787276
2020/06/11 11:53:50 [INFO] ▶ Analyzing ecfe1b8fc707f7718c897dfb26d0b2592d24dd60897c8f661f8fe6dda0f6dde6
2020/06/11 11:53:50 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1] contains 73 total vulnerabilities
2020/06/11 11:53:50 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1] contains 73 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress jetbrains/teamcity-agent:2020.1
2020-06-11T08:54:06.341Z        INFO    Need to update DB
2020-06-11T08:54:06.341Z        INFO    Downloading DB...
2020-06-11T08:54:40.114Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1 (ubuntu 18.04)
==============================================
Total: 202 (UNKNOWN: 0, LOW: 147, MEDIUM: 55, HIGH: 0, CRITICAL: 0)
```
