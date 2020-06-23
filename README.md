# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~530MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1.1-alpine-3.12.0
2020/06/23 16:59:20 [INFO] ▶ Start clair-scanner
2020/06/23 16:59:25 [INFO] ▶ Server listening on port 9279
2020/06/23 16:59:25 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/23 16:59:25 [INFO] ▶ Analyzing 06e9c7e1906b22631c6e96316342d6d3da47eab969dbe96b65e3d6feb5e0c7d6
2020/06/23 16:59:26 [INFO] ▶ Analyzing 427d1e185e6bee007230f2b7ae36c307527c0dcbf6f9b2d5cbe0f9c0739f286c
2020/06/23 16:59:26 [INFO] ▶ Analyzing 1521f2e5e28ced168221a1e29da7499d5fc691ec1530b31fcfad1cc8c7e4566d
2020/06/23 16:59:26 [INFO] ▶ Analyzing b758212c243a10d25b302f7fa3a3ccec24320866a942eac965264773b5897870
2020/06/23 16:59:26 [INFO] ▶ Analyzing c6861ffe6619db79f22225592b2b3f8b4263a2c691448ab8043932ed680b8d1f
2020/06/23 16:59:26 [INFO] ▶ Analyzing 07f89c09ee1f6681374a788de91d3687fb2368ec2adae3bfd3b1452c8d889601
2020/06/23 16:59:26 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/teamcity-agent:2020.1.1-alpine-3.12.0
2020-06-23T13:59:32.318Z        INFO    Need to update DB
2020-06-23T13:59:32.318Z        INFO    Downloading DB...
2020-06-23T13:59:43.279Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1.1-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

```

## Official Docker image (~1.34GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.1.1
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.1.1
2020/06/23 16:59:48 [INFO] ▶ Start clair-scanner
2020/06/23 17:00:09 [INFO] ▶ Server listening on port 9279
2020/06/23 17:00:09 [INFO] ▶ Analyzing 4046a0366bf3d63d6ebb165835dd7cd4a72c49d65942a66efb1b4a44bf5803b2
2020/06/23 17:00:09 [INFO] ▶ Analyzing cb6f8e1a8e2c47f2e7eda433f9afb3ce6debe0131ba556f6ab516f1092b589be
2020/06/23 17:00:09 [INFO] ▶ Analyzing f81f5853c77138f4f3bef3fe7a639070314c8b38f66f03f57055b5d9055c5c7a
2020/06/23 17:00:09 [INFO] ▶ Analyzing 5171a8ddd9ca89e576ef04f932cfff352168ff2e06f856cc05d09b998989c8c5
2020/06/23 17:00:09 [INFO] ▶ Analyzing d7020ea86a8e49d3df5c284ed7d190a6ad7f31c4966516c1460523a2970a6347
2020/06/23 17:00:09 [INFO] ▶ Analyzing 347b4f049210a3da755c9cd385d65bf3ec4b40650e4f554306e1aa121fa2906b
2020/06/23 17:00:09 [INFO] ▶ Analyzing bace7ae0f99261c3e53d7f9fdd69e4d463dfe6461cd4b7f2a3a605ff6269460f
2020/06/23 17:00:09 [INFO] ▶ Analyzing 139b53839a4323a74d56ec8c1a35e8eaaf9b5b3e801033b219de64979d90c327
2020/06/23 17:00:09 [INFO] ▶ Analyzing 5831b65606c031c3533d6b1885ef7f326b6f06efe6de7f667a37b07a61ac5c74
2020/06/23 17:00:09 [INFO] ▶ Analyzing ee80123a7fd4b13086ac49be10f37e623f71e884ebff59f60979bb6ede03a57a
2020/06/23 17:00:09 [INFO] ▶ Analyzing bfaff769dffdfdeb9d0e8023bfbe7045616873342dba9544dfc612c32ecbb220
2020/06/23 17:00:09 [INFO] ▶ Analyzing cb663b573c8379244d4b3c604ab40adc8eb45b32ea3520d336c4e879490f2fad
2020/06/23 17:00:09 [INFO] ▶ Analyzing bcc6a38c5f6905bc567abb6759596a11fa6d68426674f9711b19501d80b87267
2020/06/23 17:00:10 [INFO] ▶ Analyzing 4cc83d336e6540a5d7d1451328e8d17dce9862748453b38e079b14a71b665a89
2020/06/23 17:00:10 [INFO] ▶ Analyzing 711bfd752f3325a9fad13a8cafa9c4b13d980133c3fa1dcdef80c52382af72ee
2020/06/23 17:00:10 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1.1] contains 63 total vulnerabilities
2020/06/23 17:00:10 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1.1] contains 63 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress jetbrains/teamcity-agent:2020.1.1
2020-06-23T14:00:16.496Z        INFO    Need to update DB
2020-06-23T14:00:16.496Z        INFO    Downloading DB...
2020-06-23T14:00:41.532Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1.1 (ubuntu 18.04)
================================================
Total: 187 (UNKNOWN: 0, LOW: 134, MEDIUM: 53, HIGH: 0, CRITICAL: 0)
```
