# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~538MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.3-alpine-3.11.6
2020/04/25 17:41:18 [INFO] ▶ Start clair-scanner
2020/04/25 17:41:24 [INFO] ▶ Server listening on port 9279
2020/04/25 17:41:24 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 17:41:24 [INFO] ▶ Analyzing 7e0e2a3adfdadab6fcf86befb824c2e1d109360b48d810529dfeab592f85a671
2020/04/25 17:41:25 [INFO] ▶ Analyzing 7da25c8fbe64b52f68d9a65f10e32df051c4781b7c77782448b337eb983d3911
2020/04/25 17:41:25 [INFO] ▶ Analyzing fcdb1b3113d8b353eac4d51fa674d00421be0611286b47bfd0082f1714955e92
2020/04/25 17:41:25 [INFO] ▶ Analyzing 26b13c92550eee1b5a18ecd8a20bc24ef4ab85b9d428f650a3fbf7f40198c335
2020/04/25 17:41:25 [INFO] ▶ Analyzing aab8f5cfa6316e5abdb94125abbd47fb736121bc9a39cb752f4a64e0b0194d88
2020/04/25 17:41:25 [INFO] ▶ Analyzing 5059d2787bced9af82aeb88fbb4dc45e686d44b0ab8df5df480ecf20db3c2c9c
2020/04/25 17:41:25 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.3-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/teamcity-agent:2019.2.3-alpine-3.11.6
2020-04-25T14:41:27.395Z        INFO    Need to update DB
2020-04-25T14:41:27.395Z        INFO    Downloading DB...
2020-04-25T14:41:41.947Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2.3-alpine-3.11.6 (alpine 3.11.6)
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
2020/04/25 17:41:47 [INFO] ▶ Start clair-scanner
2020/04/25 17:42:10 [INFO] ▶ Server listening on port 9279
2020/04/25 17:42:10 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/25 17:42:10 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/25 17:42:10 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/25 17:42:10 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/25 17:42:10 [INFO] ▶ Analyzing 154309f8ce1dda37d1385e6985519c626791895279370606e69ee9c13e09c365
2020/04/25 17:42:10 [INFO] ▶ Analyzing a8ea466a24ddcf94450dcf1d7436db143ef8da2194ba3a9dff1be7d475a81116
2020/04/25 17:42:10 [INFO] ▶ Analyzing 000e1d94b1a80ef9e26d55072c7a35a594440639b37ed6a9eafef4579df48bd7
2020/04/25 17:42:10 [INFO] ▶ Analyzing 5f7ffa3377521893ec987290417d19d5c4c0954eb85e00be18334138dbe28578
2020/04/25 17:42:10 [INFO] ▶ Analyzing 17d541cd36ebb78d3471dc57ef324b73c704af5bfe22f985fba724ea918cedd3
2020/04/25 17:42:10 [INFO] ▶ Analyzing b6d72aafb1c0ac545b4530f9f0c0ff2e913de269928917c03622d260fb6e72b8
2020/04/25 17:42:10 [INFO] ▶ Analyzing 5686b011fd77944ee280c6650b5573cc24ed84a40d2525e10e20b1b426aee1c8
2020/04/25 17:42:10 [INFO] ▶ Analyzing 0e4a3fe1687c7da11f41b09c0b862ffeb2539e653c257ea8974c9e5240fa7f37
2020/04/25 17:42:11 [INFO] ▶ Analyzing 0f8c2f8f68b43dd77c1542f806aa6f8b62c9c0da988c5b1179913733c7b0681f
2020/04/25 17:42:11 [INFO] ▶ Analyzing f3bd3b6addbd4e780ad27a0e2464233533f114e471f085f8fce2fd58b52660cf
2020/04/25 17:42:11 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.3] contains 71 total vulnerabilities
2020/04/25 17:42:11 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.3] contains 71 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress jetbrains/teamcity-agent:2019.2.3
2020-04-25T14:42:13.791Z        INFO    Need to update DB
2020-04-25T14:42:13.791Z        INFO    Downloading DB...
2020-04-25T14:42:42.522Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.3 (ubuntu 18.04)
================================================
Total: 198 (UNKNOWN: 0, LOW: 24, MEDIUM: 132, HIGH: 42, CRITICAL: 0)
```
