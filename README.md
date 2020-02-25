# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.2-alpine-3.11.3
2020/02/25 13:46:19 [INFO] ▶ Start clair-scanner
2020/02/25 13:46:25 [INFO] ▶ Server listening on port 9279
2020/02/25 13:46:25 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/25 13:46:28 [INFO] ▶ Analyzing 091a5d9157d0cfdb968563bf2848b95a2f8c2d44220525363291424e9fa63782
2020/02/25 13:46:28 [INFO] ▶ Analyzing 6cb9f80b6b928d7f450dab54bb8ea1eb2170096ebb57ceca1ea673eff494d4d8
2020/02/25 13:46:28 [INFO] ▶ Analyzing 50962af6600d51c098527f067a81800b0043d9dcfb888846f1c6e585cb93e9f2
2020/02/25 13:46:28 [INFO] ▶ Analyzing 035a110861a4e75c446b609eb74fdd09a418f87a42897e91707e46a62c21482a
2020/02/25 13:46:28 [INFO] ▶ Analyzing bc8c66d1bbf13e426b5610070165610c6f777980d41197503ffc4ab7ffa9e21e
2020/02/25 13:46:28 [INFO] ▶ Analyzing 5fc7fa4620903a9fdee215bbed03a94986df5c8bf9097a6a4db7cfae581c1188
2020/02/25 13:46:29 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/teamcity-agent:2019.2.2-alpine-3.11.3
2020-02-25T11:46:31.889Z        INFO    Need to update DB
2020-02-25T11:46:31.889Z        INFO    Downloading DB...
2020-02-25T11:46:47.474Z        INFO    Reopening DB...
2020-02-25T11:46:54.146Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2.2-alpine-3.11.3 (alpine 3.11.3)
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
2020/02/25 11:35:06 [INFO] ▶ Start clair-scanner
2020/02/25 11:35:29 [INFO] ▶ Server listening on port 9279
2020/02/25 11:35:29 [INFO] ▶ Analyzing 15348efe8a757700295ae7836d4970a53d47b312e5c0f17f8daa1357d32f04ff
2020/02/25 11:35:29 [INFO] ▶ Analyzing d6adeec240849e4c822098579a237dc85123e2b873cbdb0343c3dcb5023f68ea
2020/02/25 11:35:29 [INFO] ▶ Analyzing af28ce57eceb1be549da671ae5b0d6a0cfa1bba1a8d797314a273852eb3e63f0
2020/02/25 11:35:29 [INFO] ▶ Analyzing 672ea66db03e9962d1bf2504ff4ed7b4f121beda54876bdd7fc53b325beba8ad
2020/02/25 11:35:29 [INFO] ▶ Analyzing 1afe5f6fd460d823c10625a9b1eb722e46c55b41ae6023f7ab172c87545f0e54
2020/02/25 11:35:29 [INFO] ▶ Analyzing 8551c16527e6fe8fd51d1b088084ce32227e174a934954b8e347ba7f911a01ca
2020/02/25 11:35:29 [INFO] ▶ Analyzing dd148c1bb6d6359177d4545e030fefe85b9b70956a14f90350053f977560dc29
2020/02/25 11:35:29 [INFO] ▶ Analyzing 30d6608b4c4089b6cdbb0bdf96c4b34ba8b4aafb06cac8f8d59816ac69414cd5
2020/02/25 11:35:29 [INFO] ▶ Analyzing 25b60451e0aeee8853f3a56a2cb97d682d6576201db8d6ca894932c4c1693696
2020/02/25 11:35:29 [INFO] ▶ Analyzing 62e441f37d172cb1655dccb382cd8536706171e7968d2ffad68b713e411ba670
2020/02/25 11:35:29 [INFO] ▶ Analyzing 657307de319597fb66dea9828104128f57aeec96683bacd99cf622b32abbe613
2020/02/25 11:35:29 [INFO] ▶ Analyzing 5b8c7606f702fbf73c1424ca2131885e4d45a0aaee34e537b491b831bd36ca8d
2020/02/25 11:35:30 [INFO] ▶ Analyzing 8daacc135109c0fd6204c3241caa1cfef56f46186fa601d3534fb6a0b5db22b1
2020/02/25 11:35:30 [INFO] ▶ Analyzing 86258314dd3dd97a78c2318e914cf2c5427555959dcf3cafd42f34fea77885a7
2020/02/25 11:35:30 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.2] contains 62 total vulnerabilities
2020/02/25 11:35:30 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.2] contains 62 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress jetbrains/teamcity-agent:2019.2.2
2020-02-25T09:35:32.691Z        INFO    Need to update DB
2020-02-25T09:35:32.691Z        INFO    Downloading DB...
2020-02-25T09:35:36.915Z        INFO    Reopening DB...
2020-02-25T09:35:58.649Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.2 (ubuntu 18.04)
================================================
Total: 179 (UNKNOWN: 0, LOW: 30, MEDIUM: 118, HIGH: 31, CRITICAL: 0)
```
