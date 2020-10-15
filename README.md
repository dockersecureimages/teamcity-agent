# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~530MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1.5-alpine-3.12.0
2020/10/15 19:05:41 [INFO] ▶ Start clair-scanner
2020/10/15 19:05:46 [INFO] ▶ Server listening on port 9279
2020/10/15 19:05:46 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:05:46 [INFO] ▶ Analyzing 2ac2dadfa3f107402e829b22c1085d8f8d16f5328a463d99ea4779d2687826ac
2020/10/15 19:05:46 [INFO] ▶ Analyzing 46f4a1a7071200e6ad998ef94a308ee6128a5020493155946b63423efcd53f25
2020/10/15 19:05:46 [INFO] ▶ Analyzing 66d7b395b19f5fff4a0cc352858301e802995a35b04111940aea497ee5826bd8
2020/10/15 19:05:46 [INFO] ▶ Analyzing 7c3b0e5faabdd7718c1387b8ff3d47d96353e4d5fef57d250766aa2fddec01a0
2020/10/15 19:05:46 [INFO] ▶ Analyzing 5499c673af66bdd3b1cc074c7a02dce96f9863552cdae17965fc0a229846169d
2020/10/15 19:05:46 [INFO] ▶ Analyzing da712b72cb1905402b72ddd6471f2e9e9950eb31b5bf02bc8a3801db3b5ba862
2020/10/15 19:05:46 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1.5-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/teamcity-agent:2020.1.5-alpine-3.12.0
2020-10-15T19:05:48.386Z        INFO    Need to update DB
2020-10-15T19:05:48.386Z        INFO    Downloading DB...
2020-10-15T19:06:12.880Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1.5-alpine-3.12.0 (alpine 3.12.0)
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
2020/10/15 19:06:17 [INFO] ▶ Start clair-scanner
2020/10/15 19:06:34 [INFO] ▶ Server listening on port 9279
2020/10/15 19:06:34 [INFO] ▶ Analyzing 8bf067b107a6f7444876e33c6ed85652355f679ac98ebab97ab3ebad63f0dff3
2020/10/15 19:06:34 [INFO] ▶ Analyzing 468327b5cd7ce539db695bd0ef05dae8a4ff77b02870a8e823ed74dedad4bd55
2020/10/15 19:06:34 [INFO] ▶ Analyzing 6cf145843a8d3af29f9b328595994e1487c110c5adcecc8d7125505cbea1b5b7
2020/10/15 19:06:34 [INFO] ▶ Analyzing 69d572705fc23879ba50fcbc772b8327e950053a4e95d3f2f7882b28d7412eb6
2020/10/15 19:06:35 [INFO] ▶ Analyzing 4f759ecbccbffb170c4d6c1e860ce24819655537f241cf4298e550d4d65bf18c
2020/10/15 19:06:35 [INFO] ▶ Analyzing c53a55373a3d38beedb33e5d40443501d5229e144eb05c1cbff2070af5f46ce9
2020/10/15 19:06:35 [INFO] ▶ Analyzing 095bf59b82b33cda4575e315ada5630005aa164cc0bc3cfae55d2a2845e824f1
2020/10/15 19:06:35 [INFO] ▶ Analyzing 9411294f01faa836b13d3d35d9c1646702d8d3a6d79873048d829553bc900fd1
2020/10/15 19:06:35 [INFO] ▶ Analyzing df0810753e486199c26c768f4f6baa7659cad5be3661ea84fc4eae638fe3c51a
2020/10/15 19:06:35 [INFO] ▶ Analyzing cf3e2916969c155cbd756febad817377cb514f95e6a5d304c744a5572c9a4262
2020/10/15 19:06:35 [INFO] ▶ Analyzing 69daf07be60d663d0eaf51f510aed93e0a58e143ac95d9ada4bd6d7aa735b25d
2020/10/15 19:06:35 [INFO] ▶ Analyzing 2982f27eafcd1e039ce39e55ff936a9e11330cf861520a3cd52e734977863fc1
2020/10/15 19:06:37 [INFO] ▶ Analyzing e16449722896e6b88b231aae6657b5b475d34b3d5a2b131bf6ff623ee27ec61c
2020/10/15 19:06:37 [INFO] ▶ Analyzing e2b45925b65b213a2c206d96ec9035146d64aa20d0aa60095d6960711433abeb
2020/10/15 19:06:37 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1.5] contains 49 total vulnerabilities
2020/10/15 19:06:37 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1.5] contains 49 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress jetbrains/teamcity-agent:2020.1.5
2020-10-15T19:06:42.115Z        INFO    Need to update DB
2020-10-15T19:06:42.116Z        INFO    Downloading DB...
2020-10-15T19:07:37.940Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1.5 (ubuntu 18.04)
================================================
Total: 123 (UNKNOWN: 0, LOW: 101, MEDIUM: 22, HIGH: 0, CRITICAL: 0)
```
