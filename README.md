# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~530MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1.5-alpine-3.12.1
2020/11/14 16:52:48 [INFO] ▶ Start clair-scanner
2020/11/14 16:52:53 [INFO] ▶ Server listening on port 9279
2020/11/14 16:52:53 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 16:52:53 [INFO] ▶ Analyzing 6b52197508fa12c850852c3e70ff434a9c3c36c949d03f89a232a2bbbfaad577
2020/11/14 16:52:54 [INFO] ▶ Analyzing 847f6bf9f348c083f435ee8d0173be0e59bd3743a80d2c62f01a8402a8cf72c4
2020/11/14 16:52:54 [INFO] ▶ Analyzing d1c98902d02c86b6cce5c30726f8640cf9de26eec7198f07b7cfaa7326689364
2020/11/14 16:52:54 [INFO] ▶ Analyzing d1e306019e319993b4e915f5e1aff550c5e47f4d99d7773d879dda8dbcb01751
2020/11/14 16:52:54 [INFO] ▶ Analyzing a505e3bf88373388c9960d7d0c98d1ad66821b069b3103c8085c8749c13fb639
2020/11/14 16:52:54 [INFO] ▶ Analyzing 61215d58693242cc700ace3da656e77cd45c4e6aecf4c598a7d67ea7b9dc0bbb
2020/11/14 16:52:54 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1.5-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/teamcity-agent:2020.1.5-alpine-3.12.1
2020-11-14T16:52:56.970Z        INFO    Need to update DB
2020-11-14T16:52:56.970Z        INFO    Downloading DB...
2020-11-14T16:53:06.647Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1.5-alpine-3.12.1 (alpine 3.12.1)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

```

## Official Docker image (~1.35GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.1.5
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.1.5
2020/11/14 16:53:12 [INFO] ▶ Start clair-scanner
2020/11/14 16:53:36 [INFO] ▶ Server listening on port 9279
2020/11/14 16:53:36 [INFO] ▶ Analyzing 8bf067b107a6f7444876e33c6ed85652355f679ac98ebab97ab3ebad63f0dff3
2020/11/14 16:53:36 [INFO] ▶ Analyzing 468327b5cd7ce539db695bd0ef05dae8a4ff77b02870a8e823ed74dedad4bd55
2020/11/14 16:53:36 [INFO] ▶ Analyzing 6cf145843a8d3af29f9b328595994e1487c110c5adcecc8d7125505cbea1b5b7
2020/11/14 16:53:36 [INFO] ▶ Analyzing 69d572705fc23879ba50fcbc772b8327e950053a4e95d3f2f7882b28d7412eb6
2020/11/14 16:53:36 [INFO] ▶ Analyzing 4f759ecbccbffb170c4d6c1e860ce24819655537f241cf4298e550d4d65bf18c
2020/11/14 16:53:36 [INFO] ▶ Analyzing c53a55373a3d38beedb33e5d40443501d5229e144eb05c1cbff2070af5f46ce9
2020/11/14 16:53:36 [INFO] ▶ Analyzing 095bf59b82b33cda4575e315ada5630005aa164cc0bc3cfae55d2a2845e824f1
2020/11/14 16:53:36 [INFO] ▶ Analyzing 9411294f01faa836b13d3d35d9c1646702d8d3a6d79873048d829553bc900fd1
2020/11/14 16:53:36 [INFO] ▶ Analyzing df0810753e486199c26c768f4f6baa7659cad5be3661ea84fc4eae638fe3c51a
2020/11/14 16:53:36 [INFO] ▶ Analyzing cf3e2916969c155cbd756febad817377cb514f95e6a5d304c744a5572c9a4262
2020/11/14 16:53:36 [INFO] ▶ Analyzing 69daf07be60d663d0eaf51f510aed93e0a58e143ac95d9ada4bd6d7aa735b25d
2020/11/14 16:53:36 [INFO] ▶ Analyzing 2982f27eafcd1e039ce39e55ff936a9e11330cf861520a3cd52e734977863fc1
2020/11/14 16:53:37 [INFO] ▶ Analyzing e16449722896e6b88b231aae6657b5b475d34b3d5a2b131bf6ff623ee27ec61c
2020/11/14 16:53:37 [INFO] ▶ Analyzing e2b45925b65b213a2c206d96ec9035146d64aa20d0aa60095d6960711433abeb
2020/11/14 16:53:37 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1.5] contains 49 total vulnerabilities
2020/11/14 16:53:37 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1.5] contains 49 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress jetbrains/teamcity-agent:2020.1.5
2020-11-14T16:53:39.322Z        INFO    Need to update DB
2020-11-14T16:53:39.322Z        INFO    Downloading DB...
2020-11-14T16:54:01.242Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1.5 (ubuntu 18.04)
================================================
Total: 129 (UNKNOWN: 0, LOW: 92, MEDIUM: 36, HIGH: 1, CRITICAL: 0)
```
