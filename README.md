# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~538MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.3-alpine-3.11.5
2020/04/21 00:07:11 [INFO] ▶ Start clair-scanner
2020/04/21 00:07:26 [INFO] ▶ Server listening on port 9279
2020/04/21 00:07:26 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/21 00:07:26 [INFO] ▶ Analyzing 0a437c7cd6211fe8cd5c858cdfc1d57bbf6e8c35940a4172c6c6cfc2590c9ffe
2020/04/21 00:07:27 [INFO] ▶ Analyzing df22d9ba39da44b5dbce670de1a263c2d7b7f6c9a68b88df1fc86df027707a32
2020/04/21 00:07:27 [INFO] ▶ Analyzing 0d347cc30c99e25f58f8a8320669d5354aa3c5e0d94fcb6aa24904bdec2821b0
2020/04/21 00:07:27 [INFO] ▶ Analyzing 2c0305c966e8651eda57def0e5268f95d7e34548aa22409428ffc25e9e352018
2020/04/21 00:07:27 [INFO] ▶ Analyzing c59f73884b66d25cbe1dd46d8ebf55426fd85d23e4fd3d20c441c94d1602e896
2020/04/21 00:07:28 [INFO] ▶ Analyzing e081813b6cd886ab1ea737e8fabcee599c915165738ab2134ac8e0ed8a2ff987
2020/04/21 00:07:28 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.3-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-agent:2019.2.3-alpine-3.11.5
2020-04-20T21:07:30.152Z        INFO    Need to update DB
2020-04-20T21:07:30.152Z        INFO    Downloading DB...
2020-04-20T21:08:55.387Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2.3-alpine-3.11.5 (alpine 3.11.5)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.32GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2019.2.3
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2019.2.3
2020/04/21 00:09:01 [INFO] ▶ Start clair-scanner
2020/04/21 00:09:36 [INFO] ▶ Server listening on port 9279
2020/04/21 00:09:36 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/21 00:09:37 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/21 00:09:37 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/21 00:09:37 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/21 00:09:37 [INFO] ▶ Analyzing 16d335ff6e6aeb7b1c22125fdfc7695cb2dff09a9c3710e488a22fc366d329d5
2020/04/21 00:09:37 [INFO] ▶ Analyzing 26100c3b88a8479b8c7d7c30cc8e7cb3a5527e012f56b33875719a7faa171105
2020/04/21 00:09:37 [INFO] ▶ Analyzing b064b7cfdfd752158f910d59a628a1f72daaaaf261c28e80cbf36be7daca7856
2020/04/21 00:09:37 [INFO] ▶ Analyzing 55f6de197f280d6656df44f25bb0f96f509f43652437a67d947b1c0a0bdf6308
2020/04/21 00:09:37 [INFO] ▶ Analyzing f1b68ef6aaf132e8c1b266f35657b392488325772162ecfd014ad148d5a64535
2020/04/21 00:09:37 [INFO] ▶ Analyzing c873ca0747926cf159bdd70a5ae5914dd274630cd839763b8afad11a48912b39
2020/04/21 00:09:37 [INFO] ▶ Analyzing 4ee0c0e40e9b6ad42b99e4441c31ddca0363368907e7f458eb2bdb39a4e0a1a4
2020/04/21 00:09:37 [INFO] ▶ Analyzing f5229e1a9f132b7620ca5b091a121a8a597e1f152ca4cb80966dca1dbde8c178
2020/04/21 00:09:39 [INFO] ▶ Analyzing a72d3072ec014a39e8a2daeec9cebdb75fdeadcd3b2dc62c3e2ab00f7b32d9a8
2020/04/21 00:09:39 [INFO] ▶ Analyzing c050ca491b8f09d7657545d5aad0825d1e2b3b18600a50e26b6772b18f1d07f7
2020/04/21 00:09:39 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.3] contains 69 total vulnerabilities
2020/04/21 00:09:39 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.3] contains 69 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-agent:2019.2.3
2020-04-20T21:09:45.447Z        INFO    Need to update DB
2020-04-20T21:09:45.447Z        INFO    Downloading DB...
2020-04-20T21:11:33.240Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.3 (ubuntu 18.04)
================================================
Total: 188 (UNKNOWN: 0, LOW: 24, MEDIUM: 132, HIGH: 32, CRITICAL: 0)
```
