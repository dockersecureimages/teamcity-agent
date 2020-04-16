# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.2-alpine-3.11.5
2020/04/16 12:26:10 [INFO] ▶ Start clair-scanner
2020/04/16 12:26:15 [INFO] ▶ Server listening on port 9279
2020/04/16 12:26:15 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/16 12:26:15 [INFO] ▶ Analyzing ecbc909e34501a3249d33911872ee2381d7aaaebb3fda445ea033afb7377f7e4
2020/04/16 12:26:18 [INFO] ▶ Analyzing 4d0f154ea0800f6d8b8ccf41031c87cf45f685fc7bbbb8257fed1f877095c495
2020/04/16 12:26:18 [INFO] ▶ Analyzing e0fabd568e4dce2b01287470068743455bbf686f0ac3859b87f0a0a2671e6014
2020/04/16 12:26:18 [INFO] ▶ Analyzing a47dd65f1ded7b732392d7b0bd9cf7dbbb87f412946e782e059d14ef5e880dad
2020/04/16 12:26:18 [INFO] ▶ Analyzing 8e4e38a30d77c992f82abcb0037be45fd9cd3e25e1dfd180a9d60d19b685c1a6
2020/04/16 12:26:18 [INFO] ▶ Analyzing d7637b9a417b6b8b5225497e7f828afe09ac5a22f30767926614f21f705391b6
2020/04/16 12:26:18 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-agent:2019.2.2-alpine-3.11.5
2020-04-16T09:26:20.964Z        INFO    Need to update DB
2020-04-16T09:26:20.964Z        INFO    Downloading DB...
2020-04-16T09:26:31.666Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2.2-alpine-3.11.5 (alpine 3.11.5)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2019.2.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2019.2.2
2020/04/16 12:26:39 [INFO] ▶ Start clair-scanner
2020/04/16 12:27:03 [INFO] ▶ Server listening on port 9279
2020/04/16 12:27:03 [INFO] ▶ Analyzing 15348efe8a757700295ae7836d4970a53d47b312e5c0f17f8daa1357d32f04ff
2020/04/16 12:27:03 [INFO] ▶ Analyzing d6adeec240849e4c822098579a237dc85123e2b873cbdb0343c3dcb5023f68ea
2020/04/16 12:27:03 [INFO] ▶ Analyzing af28ce57eceb1be549da671ae5b0d6a0cfa1bba1a8d797314a273852eb3e63f0
2020/04/16 12:27:03 [INFO] ▶ Analyzing 672ea66db03e9962d1bf2504ff4ed7b4f121beda54876bdd7fc53b325beba8ad
2020/04/16 12:27:04 [INFO] ▶ Analyzing 1afe5f6fd460d823c10625a9b1eb722e46c55b41ae6023f7ab172c87545f0e54
2020/04/16 12:27:04 [INFO] ▶ Analyzing 8551c16527e6fe8fd51d1b088084ce32227e174a934954b8e347ba7f911a01ca
2020/04/16 12:27:04 [INFO] ▶ Analyzing dd148c1bb6d6359177d4545e030fefe85b9b70956a14f90350053f977560dc29
2020/04/16 12:27:04 [INFO] ▶ Analyzing 30d6608b4c4089b6cdbb0bdf96c4b34ba8b4aafb06cac8f8d59816ac69414cd5
2020/04/16 12:27:04 [INFO] ▶ Analyzing 25b60451e0aeee8853f3a56a2cb97d682d6576201db8d6ca894932c4c1693696
2020/04/16 12:27:04 [INFO] ▶ Analyzing 62e441f37d172cb1655dccb382cd8536706171e7968d2ffad68b713e411ba670
2020/04/16 12:27:04 [INFO] ▶ Analyzing 657307de319597fb66dea9828104128f57aeec96683bacd99cf622b32abbe613
2020/04/16 12:27:04 [INFO] ▶ Analyzing 5b8c7606f702fbf73c1424ca2131885e4d45a0aaee34e537b491b831bd36ca8d
2020/04/16 12:27:04 [INFO] ▶ Analyzing 8daacc135109c0fd6204c3241caa1cfef56f46186fa601d3534fb6a0b5db22b1
2020/04/16 12:27:04 [INFO] ▶ Analyzing 86258314dd3dd97a78c2318e914cf2c5427555959dcf3cafd42f34fea77885a7
2020/04/16 12:27:04 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.2] contains 81 total vulnerabilities
2020/04/16 12:27:04 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.2] contains 81 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-agent:2019.2.2
2020-04-16T09:27:07.053Z        INFO    Need to update DB
2020-04-16T09:27:07.053Z        INFO    Downloading DB...
2020-04-16T09:27:33.066Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.2 (ubuntu 18.04)
================================================
Total: 202 (UNKNOWN: 0, LOW: 24, MEDIUM: 144, HIGH: 34, CRITICAL: 0)
```
