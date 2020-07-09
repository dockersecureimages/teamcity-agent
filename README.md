# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~529MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1.2-alpine-3.12.0
2020/07/09 20:31:10 [INFO] ▶ Start clair-scanner
2020/07/09 20:31:15 [INFO] ▶ Server listening on port 9279
2020/07/09 20:31:15 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/09 20:31:15 [INFO] ▶ Analyzing 05acb5d6e60e0bd0f0b4f8ad042b8f0078c8733d5baf2d22e296578e0aa1c8e4
2020/07/09 20:31:16 [INFO] ▶ Analyzing cdb1aa1dd8e96180d0d12b61b2825b093cec388da1933b9ebd5c97836943ea5c
2020/07/09 20:31:16 [INFO] ▶ Analyzing ea07f0fa23e8b1552101e8e99df3c439191037f6ef861065de2ea0f479e4c2af
2020/07/09 20:31:16 [INFO] ▶ Analyzing 73b47bbcd945bdc879e193ca0643fc014d20309cb72f90545380d74df2b3a490
2020/07/09 20:31:16 [INFO] ▶ Analyzing 5344207868cd800a75f4c4689198619e1067959bdd61f3deef1d0e97039969de
2020/07/09 20:31:16 [INFO] ▶ Analyzing 00c39195dcaa26f063fc38b3e26baec24c6adf644bc24de378bee1786c5e1fde
2020/07/09 20:31:16 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1.2-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/teamcity-agent:2020.1.2-alpine-3.12.0
2020-07-09T17:31:18.419Z        INFO    Need to update DB
2020-07-09T17:31:18.419Z        INFO    Downloading DB...
2020-07-09T17:31:28.629Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1.2-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

```

## Official Docker image (~1.36GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.1.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.1.2
2020/07/09 20:33:24 [INFO] ▶ Start clair-scanner
2020/07/09 20:33:48 [INFO] ▶ Server listening on port 9279
2020/07/09 20:33:48 [INFO] ▶ Analyzing eac38f7eb67b83a6e4970a491f1d74a27510b422968961d361d02823049def3f
2020/07/09 20:33:48 [INFO] ▶ Analyzing f09d25849e9828314f5027b75bb398bb7f0ee87d6a84dc0fd49cfbf46de9f02b
2020/07/09 20:33:48 [INFO] ▶ Analyzing 3a1c37708124f6c3c1d1ff1965ed4e13e7ccba99747b9457c35a53db563a874a
2020/07/09 20:33:48 [INFO] ▶ Analyzing bfb1707b3bd6ec47e80900687b5f5c015e9efeb82f234304ed74a8631bc2e75c
2020/07/09 20:33:48 [INFO] ▶ Analyzing 8322315bc5c7bf683e76195f8d04b33c682f787a27da86d5e7e51d12d4aa9bf9
2020/07/09 20:33:48 [INFO] ▶ Analyzing 4bf15ccdae63fd1d62a6f6d285934dc37ef6ba909f795735bb2121dd1b166c0a
2020/07/09 20:33:48 [INFO] ▶ Analyzing e75e37574bc58a159cd3c6d81b14f0d61bdd94a1c7199b27dce72c59b96c9be8
2020/07/09 20:33:48 [INFO] ▶ Analyzing 7d48a4762ec5a0115fe2752e9839dd3aa58fceef9c27e8b28b5e222c4317b177
2020/07/09 20:33:48 [INFO] ▶ Analyzing 2a194a272070fa7cdb2cb5df590c52d78090da7d0399a5342cc7e2465202e3e4
2020/07/09 20:33:48 [INFO] ▶ Analyzing bea80258abbf611b0e16faf007f32eb3fe759f4d23cd6bfde6565e87d1d7ffce
2020/07/09 20:33:48 [INFO] ▶ Analyzing 742582d7d98f1122085246528d97c9decf81fb7fb795e6c84a3073cebb90ab2c
2020/07/09 20:33:48 [INFO] ▶ Analyzing e084d3289614d9068073dbe95e8331d54548aef54431c961fe3ae80c279f0430
2020/07/09 20:33:48 [INFO] ▶ Analyzing b5af957277977b8ca4d4722ede8d9dc6372a06f95409a3ac8692e566017c3035
2020/07/09 20:33:49 [INFO] ▶ Analyzing 643b9ce51ce675888a2728821529087c1bc09f705c144a909ecc576acf5daf9c
2020/07/09 20:33:49 [INFO] ▶ Analyzing d84b3caf773460e75a521c0ed4e98cb5211200c7c797fdd86610af68804e0665
2020/07/09 20:33:49 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1.2] contains 66 total vulnerabilities
2020/07/09 20:33:49 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1.2] contains 66 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress jetbrains/teamcity-agent:2020.1.2
2020-07-09T17:34:07.464Z        INFO    Need to update DB
2020-07-09T17:34:07.464Z        INFO    Downloading DB...
2020-07-09T17:34:38.616Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1.2 (ubuntu 18.04)
================================================
Total: 166 (UNKNOWN: 0, LOW: 126, MEDIUM: 40, HIGH: 0, CRITICAL: 0)
```
