# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~538MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.4-alpine-3.11.6
2020/05/08 18:28:46 [INFO] ▶ Start clair-scanner
2020/05/08 18:28:51 [INFO] ▶ Server listening on port 9279
2020/05/08 18:28:51 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/08 18:28:52 [INFO] ▶ Analyzing 030ebb34eb52d265ce537561a714d23e744a493866557df8f42689b7ca7197da
2020/05/08 18:28:52 [INFO] ▶ Analyzing 15a949cc215cc0d5bc67b3d605a046ce3927125249e397916816851ea5b1b95b
2020/05/08 18:28:52 [INFO] ▶ Analyzing a6d9b63ee204d89aaf1349407f92406359d545e6912c45a3f4b81aa4b90b6b04
2020/05/08 18:28:52 [INFO] ▶ Analyzing 3c1d8ffd001b07608943fd35751c1eba7c4846e4676106237e916d31d4ea3366
2020/05/08 18:28:52 [INFO] ▶ Analyzing 2b4ddbcf619f1575dde6bc408a4cef09267d57eed8a12880d8972efca1ab3edf
2020/05/08 18:28:52 [INFO] ▶ Analyzing 128ec5242042a8ff0e419ae0407153dcb85a2a5bbe179f3281dbe12d2dc47ec0
2020/05/08 18:28:52 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.4-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-agent:2019.2.4-alpine-3.11.6
2020-05-08T15:28:55.140Z        INFO    Need to update DB
2020-05-08T15:28:55.140Z        INFO    Downloading DB...
2020-05-08T15:29:07.757Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2.4-alpine-3.11.6 (alpine 3.11.6)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~1.32GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2019.2.4
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2019.2.4
2020/05/08 18:29:13 [INFO] ▶ Start clair-scanner
2020/05/08 18:29:35 [INFO] ▶ Server listening on port 9279
2020/05/08 18:29:35 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/08 18:29:35 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/08 18:29:35 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/08 18:29:35 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/08 18:29:35 [INFO] ▶ Analyzing ed65ae13ac8085a69111a0abce3fbc7c0d888204c6c6d87b18c0d2b5a98b7c6a
2020/05/08 18:29:35 [INFO] ▶ Analyzing 13e876cf9db2305c5db6a82ccd8352208a649f699ca91f015b33e127fd6dd0b0
2020/05/08 18:29:35 [INFO] ▶ Analyzing 02094e73485fa60371b994cd670de11947c5dc4b5b21f7806c382c461c9a7eb1
2020/05/08 18:29:35 [INFO] ▶ Analyzing f55eafc9cde01fcff627d570daff5685d1a12861223c92d8aa462c57720d080c
2020/05/08 18:29:35 [INFO] ▶ Analyzing e593e5cf63701f411415a6922cf6781be15bd4ee38d0ff35bc1497da91c097e0
2020/05/08 18:29:35 [INFO] ▶ Analyzing 9143f1320f1f37a50e9bc984518c97e5ac0183e5b72a7406ea514e9e51328fd9
2020/05/08 18:29:35 [INFO] ▶ Analyzing 511896e706fb36ec85c8ab16821eb73633e2ffd4bedb4b6948544bab25d8cfc5
2020/05/08 18:29:35 [INFO] ▶ Analyzing 25f1c26f5f507efd18d2dd5261c6762d3fa034caafeb1532248acdc8ec33550d
2020/05/08 18:29:36 [INFO] ▶ Analyzing 47c06ad96e597bc9a108a45284be157e7f16832e2841ee70837bbe8b52f17f28
2020/05/08 18:29:36 [INFO] ▶ Analyzing 91825d8eb24706baff91e9362e735d98db4a45c8484f058b90d4173318aa61f7
2020/05/08 18:29:36 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.4] contains 66 total vulnerabilities
2020/05/08 18:29:36 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.4] contains 66 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-agent:2019.2.4
2020-05-08T15:29:37.996Z        INFO    Need to update DB
2020-05-08T15:29:37.996Z        INFO    Downloading DB...
2020-05-08T15:30:06.422Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.4 (ubuntu 18.04)
================================================
Total: 180 (UNKNOWN: 0, LOW: 24, MEDIUM: 124, HIGH: 32, CRITICAL: 0)
```
