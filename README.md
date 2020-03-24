# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.2-alpine-3.11.5
2020/03/24 18:32:22 [INFO] ▶ Start clair-scanner
2020/03/24 18:32:28 [INFO] ▶ Server listening on port 9279
2020/03/24 18:32:28 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 18:32:28 [INFO] ▶ Analyzing d73943eba4546d9f62d52ddc1300abd7c98f2f83292e8b88559e69a7a9163da3
2020/03/24 18:32:28 [INFO] ▶ Analyzing 4d652065d721d6011eb81276e0f1976da7bb39b7958cf9cb33eb8b2f06998847
2020/03/24 18:32:28 [INFO] ▶ Analyzing a7e50f85ba1f03a47e757319745c006de53c2ac90f41c3bfc9ed9c6477f0551a
2020/03/24 18:32:28 [INFO] ▶ Analyzing 252bd094553a33cf34ade80bd255d8614b33275183eea9f86d753e1ea463e26d
2020/03/24 18:32:28 [INFO] ▶ Analyzing 5456bc12dc877b26d40dfb0e81d80d2c68500ede44d2e183384c758faea67766
2020/03/24 18:32:28 [INFO] ▶ Analyzing d5bda36a9f374b0d8a49d1fb3e58733c7f5daf80b7dccd61378ddbf2ed403bf3
2020/03/24 18:32:28 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/teamcity-agent:2019.2.2-alpine-3.11.5
2020-03-24T16:32:32.031Z        INFO    Need to update DB
2020-03-24T16:32:32.031Z        INFO    Downloading DB...
2020-03-24T16:32:35.810Z        INFO    Reopening DB...
2020-03-24T16:32:44.934Z        INFO    Detecting Alpine vulnerabilities...

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
2020/03/24 18:32:50 [INFO] ▶ Start clair-scanner
2020/03/24 18:33:14 [INFO] ▶ Server listening on port 9279
2020/03/24 18:33:14 [INFO] ▶ Analyzing 15348efe8a757700295ae7836d4970a53d47b312e5c0f17f8daa1357d32f04ff
2020/03/24 18:33:14 [INFO] ▶ Analyzing d6adeec240849e4c822098579a237dc85123e2b873cbdb0343c3dcb5023f68ea
2020/03/24 18:33:14 [INFO] ▶ Analyzing af28ce57eceb1be549da671ae5b0d6a0cfa1bba1a8d797314a273852eb3e63f0
2020/03/24 18:33:14 [INFO] ▶ Analyzing 672ea66db03e9962d1bf2504ff4ed7b4f121beda54876bdd7fc53b325beba8ad
2020/03/24 18:33:14 [INFO] ▶ Analyzing 1afe5f6fd460d823c10625a9b1eb722e46c55b41ae6023f7ab172c87545f0e54
2020/03/24 18:33:14 [INFO] ▶ Analyzing 8551c16527e6fe8fd51d1b088084ce32227e174a934954b8e347ba7f911a01ca
2020/03/24 18:33:14 [INFO] ▶ Analyzing dd148c1bb6d6359177d4545e030fefe85b9b70956a14f90350053f977560dc29
2020/03/24 18:33:14 [INFO] ▶ Analyzing 30d6608b4c4089b6cdbb0bdf96c4b34ba8b4aafb06cac8f8d59816ac69414cd5
2020/03/24 18:33:14 [INFO] ▶ Analyzing 25b60451e0aeee8853f3a56a2cb97d682d6576201db8d6ca894932c4c1693696
2020/03/24 18:33:14 [INFO] ▶ Analyzing 62e441f37d172cb1655dccb382cd8536706171e7968d2ffad68b713e411ba670
2020/03/24 18:33:14 [INFO] ▶ Analyzing 657307de319597fb66dea9828104128f57aeec96683bacd99cf622b32abbe613
2020/03/24 18:33:14 [INFO] ▶ Analyzing 5b8c7606f702fbf73c1424ca2131885e4d45a0aaee34e537b491b831bd36ca8d
2020/03/24 18:33:15 [INFO] ▶ Analyzing 8daacc135109c0fd6204c3241caa1cfef56f46186fa601d3534fb6a0b5db22b1
2020/03/24 18:33:15 [INFO] ▶ Analyzing 86258314dd3dd97a78c2318e914cf2c5427555959dcf3cafd42f34fea77885a7
2020/03/24 18:33:15 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.2] contains 77 total vulnerabilities
2020/03/24 18:33:15 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.2] contains 77 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress jetbrains/teamcity-agent:2019.2.2
2020-03-24T16:33:18.419Z        INFO    Need to update DB
2020-03-24T16:33:18.419Z        INFO    Downloading DB...
2020-03-24T16:33:25.455Z        INFO    Reopening DB...
2020-03-24T16:33:56.525Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.2 (ubuntu 18.04)
================================================
Total: 194 (UNKNOWN: 0, LOW: 20, MEDIUM: 143, HIGH: 31, CRITICAL: 0)
```
