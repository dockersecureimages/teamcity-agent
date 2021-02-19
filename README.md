# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~496MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.2.2-alpine-3.13.2
2021/02/19 22:07:22 [INFO] ▶ Start clair-scanner
2021/02/19 22:07:27 [INFO] ▶ Server listening on port 9279
2021/02/19 22:07:27 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/19 22:07:27 [INFO] ▶ Analyzing dc534402c63a41e64313113cf1d79c9cf4ffd0b252e165854b3064e38da95760
2021/02/19 22:07:27 [INFO] ▶ Analyzing bd09ba4c644b7b4f72752b537b2ff37fa74f2ae666d2facb2608b5f9b6a14f8e
2021/02/19 22:07:27 [INFO] ▶ Analyzing c17127674a873efe75760780c2093361ec7a0e04f772c00dc7651545efdf4bac
2021/02/19 22:07:27 [INFO] ▶ Analyzing 0d5afb433b9f764e1e3d4dfd6bae57eaa74b28d01e793bda339ccb96c407f88a
2021/02/19 22:07:27 [INFO] ▶ Analyzing 0d65b893b01b86ba323060e52d838d6a0ba97fec19119c69c5ce222648e7517f
2021/02/19 22:07:27 [INFO] ▶ Analyzing 98df3a84bce331b7469bdc33fd8b3d7743bbd7bece63e7292c57ea24568eb712
2021/02/19 22:07:27 [WARN] ▶ Image [secureimages/teamcity-agent:2020.2.2-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/19 22:07:27 [ERRO] ▶ Image [secureimages/teamcity-agent:2020.2.2-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/teamcity-agent:2020.2.2-alpine-3.13.2
2021-02-19T22:07:29.133Z        INFO    Need to update DB
2021-02-19T22:07:29.133Z        INFO    Downloading DB...
2021-02-19T22:07:37.085Z        INFO    Detecting Alpine vulnerabilities...
2021-02-19T22:07:37.090Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/teamcity-agent:2020.2.2-alpine-3.13.2 (alpine 3.13.2)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~2.1GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.2.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.2.2
2021/02/19 22:07:42 [INFO] ▶ Start clair-scanner
2021/02/19 22:08:09 [INFO] ▶ Server listening on port 9279
2021/02/19 22:08:09 [INFO] ▶ Analyzing 2aade13603488c2c20ed3b6d742867cc8ce6b6dfa6f2eaff27799f1b6596835d
2021/02/19 22:08:09 [INFO] ▶ Analyzing cdec4b02a479c3dae4af73d15dfb2afff354cfeb3b9017f69d567920c629ee29
2021/02/19 22:08:09 [INFO] ▶ Analyzing 138ea95583e2a6c484dbf3d9d6994c096efca7f9bd07176dccae887494b857bb
2021/02/19 22:08:09 [INFO] ▶ Analyzing e3a29c7f173a702ace129dc7999eb0aa1d99cddc9dc886c20e6d33188fbb4089
2021/02/19 22:08:09 [INFO] ▶ Analyzing 115796e2f07ff0ffd2f2c5ddfadd6002a190d2741f5125d484b99e3cc35cd2d0
2021/02/19 22:08:12 [INFO] ▶ Analyzing c0f67d3ac25218eec0bcedfa663fdd32857d1bb037c1aaebc8ab641b22edff2b
2021/02/19 22:08:12 [INFO] ▶ Analyzing d1296ffb1fe4276843b2e239a57e8ba6f91ff4f37ea2754a53f161dd944af792
2021/02/19 22:08:12 [INFO] ▶ Analyzing 96dac791bef5994bb650c81944f1a55c42c687f80c92e2f3e8d1907c064194b4
2021/02/19 22:08:12 [INFO] ▶ Analyzing f5bbd119fe25aaf913cb3f5c92c6d7bf104c34ae1e6553efeefdd37857f88884
2021/02/19 22:08:12 [INFO] ▶ Analyzing 4b04a7ee5528d6e4cb9e8ccd4c02e42d45ceb4be80e9c422f8f8741504c51b18
2021/02/19 22:08:12 [INFO] ▶ Analyzing c9a5d1bc009db441fdea1ba961e251081fe25570a1b0cbd9872ceab364f26846
2021/02/19 22:08:12 [INFO] ▶ Analyzing 6b68edb2720eac7b92ea79d7903f7848c1dc12456e7184aee8c2b4c1f8bdc54d
2021/02/19 22:08:12 [INFO] ▶ Analyzing 54e24cff284a1620ab00a3c34bfde225cfee084158fdac572e5e3d9c868428c5
2021/02/19 22:08:13 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.2.2] contains 51 total vulnerabilities
2021/02/19 22:08:13 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.2.2] contains 51 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress jetbrains/teamcity-agent:2020.2.2
2021-02-19T22:08:15.290Z        INFO    Need to update DB
2021-02-19T22:08:15.290Z        INFO    Downloading DB...
2021-02-19T22:09:00.637Z        INFO    Detecting Ubuntu vulnerabilities...
2021-02-19T22:09:00.644Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

jetbrains/teamcity-agent:2020.2.2 (ubuntu 20.04)
================================================
Total: 111 (UNKNOWN: 0, LOW: 62, MEDIUM: 49, HIGH: 0, CRITICAL: 0)
```
