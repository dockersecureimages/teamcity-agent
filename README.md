# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~538MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1-alpine-3.11.6
2020/05/21 14:01:54 [INFO] ▶ Start clair-scanner
2020/05/21 14:01:59 [INFO] ▶ Server listening on port 9279
2020/05/21 14:01:59 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/21 14:01:59 [INFO] ▶ Analyzing ed1753a86815156b2c7c0f6a7ad1baf3237548cc5eb2ee1eed6c3f2d578e598e
2020/05/21 14:02:00 [INFO] ▶ Analyzing 5819065a529edfd7649098c83562b75353d00b925104667dcd2249d8f1f5db3e
2020/05/21 14:02:00 [INFO] ▶ Analyzing 35fe7aa9533505972b4087914f9dfebbf1b7d2215ad654e8fc5e1504ce10b3b2
2020/05/21 14:02:00 [INFO] ▶ Analyzing 8d482f398aa36464ad3f4802996b8da1601b433f2b174ceb47fa73a8d2a0e831
2020/05/21 14:02:00 [INFO] ▶ Analyzing eaceeeb95ba911b7456fa118df25e1ebb19a17d8ec648fca0b4e9ea2c9e5f79e
2020/05/21 14:02:00 [INFO] ▶ Analyzing 3b7db2a55a4a0c329822272a43c720979b49e9c075e95313cc3af1b7aa6cc346
2020/05/21 14:02:00 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/teamcity-agent:2020.1-alpine-3.11.6
2020-05-21T11:02:03.076Z        INFO    Need to update DB
2020-05-21T11:02:03.076Z        INFO    Downloading DB...
2020-05-21T11:02:14.248Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1-alpine-3.11.6 (alpine 3.11.6)
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
2020/05/21 14:02:19 [INFO] ▶ Start clair-scanner
2020/05/21 14:02:46 [INFO] ▶ Server listening on port 9279
2020/05/21 14:02:46 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/21 14:02:46 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/21 14:02:46 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/21 14:02:46 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/21 14:02:46 [INFO] ▶ Analyzing c49028ca3032013fb4b222de627272dbeb7ecdff6828d2561eb792de93f9664d
2020/05/21 14:02:46 [INFO] ▶ Analyzing abe66352c3779bd54f807322d43e5d1ecc240a03a0c32bf651eb237b0ea57a21
2020/05/21 14:02:46 [INFO] ▶ Analyzing 19b1a1bf8f690927ea4eb372fc84a1fd3dd1f20eed013dadd2171478f3fdc9c9
2020/05/21 14:02:46 [INFO] ▶ Analyzing f2e5315f33b02f24863c516244d47ba21493d43c022493d667a48618d5f209c1
2020/05/21 14:02:46 [INFO] ▶ Analyzing af15e3deca57f8bb8b480c1bb11546ebe3da18eb1a799aa20f92d94b427ad62d
2020/05/21 14:02:46 [INFO] ▶ Analyzing a73d8855cab2a64c2a973be9b48cf3c6aad84f19eeb2f7d06b853f589ffd3a08
2020/05/21 14:02:46 [INFO] ▶ Analyzing 5bb92d091b2106d869b1eceb7c5403daa6e0ab78566e17eb13fa8f8273ae6828
2020/05/21 14:02:46 [INFO] ▶ Analyzing 6c828cc85fb564bf1890656b4a009b9cc5f84c0f20303b45ce480c91f48e3406
2020/05/21 14:02:46 [INFO] ▶ Analyzing 2ed7fc00370c71952fec1f4fda2d46d963e9414e32bbaa530520e2e19468ebb1
2020/05/21 14:02:47 [INFO] ▶ Analyzing b546b0246dec5b8930baefe69156c832bc0c28490df5c6f58debb564b9787276
2020/05/21 14:02:47 [INFO] ▶ Analyzing ecfe1b8fc707f7718c897dfb26d0b2592d24dd60897c8f661f8fe6dda0f6dde6
2020/05/21 14:02:47 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1] contains 69 total vulnerabilities
2020/05/21 14:02:47 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1] contains 69 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress jetbrains/teamcity-agent:2020.1
2020-05-21T11:02:49.476Z        INFO    Need to update DB
2020-05-21T11:02:49.476Z        INFO    Downloading DB...
2020-05-21T11:03:10.908Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1 (ubuntu 18.04)
==============================================
Total: 183 (UNKNOWN: 0, LOW: 146, MEDIUM: 37, HIGH: 0, CRITICAL: 0)
```
