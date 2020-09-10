# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~530MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1.4-alpine-3.12.0
2020/09/10 18:22:38 [INFO] ▶ Start clair-scanner
2020/09/10 18:22:43 [INFO] ▶ Server listening on port 9279
2020/09/10 18:22:43 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/10 18:22:43 [INFO] ▶ Analyzing e242c8138bc6ad35b171a2744b275915829e454867918b429408606edc530efb
2020/09/10 18:22:44 [INFO] ▶ Analyzing b63738b7969d1e91bac39bc930638a2f328d99282f720ff9f4e7a0463bc54b01
2020/09/10 18:22:44 [INFO] ▶ Analyzing 564af775b2ddbbbd1d6a383d67e576fdbb891f02fe92d0dc45375e9e8f7eef1b
2020/09/10 18:22:44 [INFO] ▶ Analyzing 14756e7dfc8b70b7128e2b547457cde9e1060183d4ffc80f58297df3bcdfcb3d
2020/09/10 18:22:44 [INFO] ▶ Analyzing 48f1de12edac9c4dcbe6d496b3a355365d64ed9f2e851623e8be77d4165f9af1
2020/09/10 18:22:44 [INFO] ▶ Analyzing 92df6545ed90f598b3e77bd2e64d361c7ad1c1a90de06a917d06032a7e125eb9
2020/09/10 18:22:44 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1.4-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/teamcity-agent:2020.1.4-alpine-3.12.0
2020-09-10T18:22:50.955Z        INFO    Need to update DB
2020-09-10T18:22:50.955Z        INFO    Downloading DB...
2020-09-10T18:23:01.124Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1.4-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

```

## Official Docker image (~1.35GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.1.4
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.1.4
2020/09/10 18:23:28 [INFO] ▶ Start clair-scanner
2020/09/10 18:23:44 [INFO] ▶ Server listening on port 9279
2020/09/10 18:23:44 [INFO] ▶ Analyzing c46312971b989857795a66c3a16a6c5ad3faf70f68a86374d05fc98271302d31
2020/09/10 18:23:44 [INFO] ▶ Analyzing d5daf2b531bb4b815a1be1530978615e27bbc862258d1fd287df43a3b662181a
2020/09/10 18:23:44 [INFO] ▶ Analyzing 989dbccc76e96e34b561b0eef7753f3134b58ab454b5b222a965ff87e25cf9fb
2020/09/10 18:23:44 [INFO] ▶ Analyzing 16191067d3bf92aa3d59d244f8b1e91d2c656cbe68304eaade0f4a7d0204648c
2020/09/10 18:23:44 [INFO] ▶ Analyzing 6ab9a7073395a341b616dc65d7564abde9302145fd7a81cb752dff90185bff64
2020/09/10 18:23:44 [INFO] ▶ Analyzing bddad9e2aae89c87f06141f20598180453b88d2dc45d88347948169e029bcbbb
2020/09/10 18:23:44 [INFO] ▶ Analyzing 4600117205e8fe06609af59271e32a314416b59a087561d85d32e048a484b97f
2020/09/10 18:23:44 [INFO] ▶ Analyzing 73df394ace81356e655e57aa1ff3fefcfd28db4cb273728cb73e30b3a15fc1e3
2020/09/10 18:23:44 [INFO] ▶ Analyzing 90762f23f97b848ff5d3bc61b5c4d1f58147c01d1e3e9771d0ff9ac415a7b7b5
2020/09/10 18:23:44 [INFO] ▶ Analyzing 12843b5360afd67014ed070cf457e9d87addacbce2a31346eb7f94fe38c6dd6f
2020/09/10 18:23:45 [INFO] ▶ Analyzing 1a410fa6890f85428367cafa626c106f33cede3e5fa3441ad3e31563bc6576d6
2020/09/10 18:23:46 [INFO] ▶ Analyzing 5d282d425f8d720acf7c97af69d892675c3d7fda8f5f8c394e48eede79f238cc
2020/09/10 18:23:47 [INFO] ▶ Analyzing cc1be6f21f82f0e827d812abb1aea15c55497cd8a0ea2e19812a2b5a529ae95d
2020/09/10 18:23:47 [INFO] ▶ Analyzing eef4ece194c5d56d41b80ad3ed0ca4cf68706ba18f58dd2e71ca75660bbc3279
2020/09/10 18:23:47 [INFO] ▶ Analyzing 4095a4af6602ef73e8ff12b280ac5327c75853823d4f2edb01a6eb341560ae9d
2020/09/10 18:23:47 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1.4] contains 53 total vulnerabilities
2020/09/10 18:23:47 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1.4] contains 53 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress jetbrains/teamcity-agent:2020.1.4
2020-09-10T18:23:49.380Z        INFO    Need to update DB
2020-09-10T18:23:49.380Z        INFO    Downloading DB...
2020-09-10T18:24:11.698Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1.4 (ubuntu 18.04)
================================================
Total: 155 (UNKNOWN: 0, LOW: 133, MEDIUM: 22, HIGH: 0, CRITICAL: 0)
```
