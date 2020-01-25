# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2.1-alpine-3.11.3
2020/01/25 12:07:28 [INFO] ▶ Start clair-scanner
2020/01/25 12:07:33 [INFO] ▶ Server listening on port 9279
2020/01/25 12:07:33 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/25 12:07:33 [INFO] ▶ Analyzing 4123ee40b0c9e62ef3420690b18e45643970ebdb31645dc5ba84635df33a87b1
2020/01/25 12:07:35 [INFO] ▶ Analyzing 8999ed497018d36e31a538d6b2eba9a18ddf36186465b86a5f8aef555a950ae6
2020/01/25 12:07:35 [INFO] ▶ Analyzing 553e002edca19b401643851b3833d7cf685f84f03890d91538f31b4ff8c16210
2020/01/25 12:07:35 [INFO] ▶ Analyzing 62018985a99a4ec7efcf5c2bbe049ce494c1425cc3cce6734d2f0873809ae416
2020/01/25 12:07:35 [INFO] ▶ Analyzing d51bf3ab3611dbd7cd708f414a4f739f2de92a463de1f238e96e2965d64b92b2
2020/01/25 12:07:35 [INFO] ▶ Analyzing 6a80728dfc466ffd699561b65ecfa24ce09068007f94cde82353541873a33e97
2020/01/25 12:07:35 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/teamcity-agent:2019.2.1-alpine-3.11.3
2020-01-25T10:07:38.628Z        INFO    Need to update DB
2020-01-25T10:07:38.628Z        INFO    Downloading DB...
2020-01-25T10:07:42.571Z        INFO    Reopening DB...
2020-01-25T10:07:49.104Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2.1-alpine-3.11.3 (alpine 3.11.3)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2019.2.1
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2019.2.1
2020/01/25 12:07:55 [INFO] ▶ Start clair-scanner
2020/01/25 12:08:16 [INFO] ▶ Server listening on port 9279
2020/01/25 12:08:16 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/01/25 12:08:16 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/01/25 12:08:16 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/01/25 12:08:16 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/01/25 12:08:16 [INFO] ▶ Analyzing 70f52822ea4313fa7d860789bed5969bf64217e60d0e34e02362a89ba6024f17
2020/01/25 12:08:16 [INFO] ▶ Analyzing b5bb1830b18ae9bf1b2b69a1fdd15bba0b81decc13a804b0983b702892b06fc7
2020/01/25 12:08:16 [INFO] ▶ Analyzing a1fb2bbcfe76856c6cc1758c26cc6742d825894f13eeb41ef1726304273cf9b0
2020/01/25 12:08:16 [INFO] ▶ Analyzing a256f10f1f8a4158457e5944aef03631c7ec0dc3c90092c5142aefcd9c8b50ba
2020/01/25 12:08:16 [INFO] ▶ Analyzing 60d50d09c7ff860fb9ca0b43b4d8ba36d0838b5f574bda9759a34bc5ddab0f38
2020/01/25 12:08:16 [INFO] ▶ Analyzing 2865346fce0afbb17325359fca1d191c3a47bac18e2a3b3d2ab450b759a1ee0e
2020/01/25 12:08:16 [INFO] ▶ Analyzing 409e9c4e9a88c6e961d4a2c0c2649b11cb36042c22414cadadbdd5eb11fc1e40
2020/01/25 12:08:16 [INFO] ▶ Analyzing 2282bee3331b423f47945bf6a84ba7c3afa3c6d79d545a5867481174e97f7f10
2020/01/25 12:08:17 [INFO] ▶ Analyzing 9f9f1ccc4b2af4d3a0342cceaa944625a37262fbdf7b561176bcf07c37db801d
2020/01/25 12:08:17 [INFO] ▶ Analyzing 989e8f9fc206cdd40bb837f7741f2c93c0f6d289336067c6e41c1a036b26f554
2020/01/25 12:08:17 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2.1] contains 68 total vulnerabilities
2020/01/25 12:08:17 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2.1] contains 68 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress jetbrains/teamcity-agent:2019.2.1
2020-01-25T10:08:19.246Z        INFO    Need to update DB
2020-01-25T10:08:19.246Z        INFO    Downloading DB...
2020-01-25T10:08:23.367Z        INFO    Reopening DB...
2020-01-25T10:08:44.615Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2.1 (ubuntu 18.04)
================================================
Total: 197 (UNKNOWN: 4, LOW: 30, MEDIUM: 132, HIGH: 31, CRITICAL: 0)
```
