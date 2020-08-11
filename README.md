# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~530MB)

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2020.1.3-alpine-3.12.0
2020/08/11 18:02:05 [INFO] ▶ Start clair-scanner
2020/08/11 18:02:10 [INFO] ▶ Server listening on port 9279
2020/08/11 18:02:10 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/08/11 18:02:10 [INFO] ▶ Analyzing c661ceefb7c814db4a8400796e79e640031cff11883ba8228ac200f1c93d616f
2020/08/11 18:02:10 [INFO] ▶ Analyzing 856b536a529baf4ddd57a60f085b0e064999455c96a06e9bc8d8eb79882df2f5
2020/08/11 18:02:10 [INFO] ▶ Analyzing d03800ad15e6e6f26e4ca1c3da7cda0ca91a92b147b1c670e00772ed5d22f0c7
2020/08/11 18:02:10 [INFO] ▶ Analyzing ab2ea68f3ae223062adc723f852fb375b97ea72b9b18e7621bb5fd12c1dd41af
2020/08/11 18:02:10 [INFO] ▶ Analyzing 4462254acdbbdc1923d57c8f6c8fc36c624af3fe005a792c4f40650b0b5620ce
2020/08/11 18:02:10 [INFO] ▶ Analyzing a8ece0e4a39e2065f20662b158de91eafb9831684525d081992692ef9d2172d3
2020/08/11 18:02:10 [INFO] ▶ Image [secureimages/teamcity-agent:2020.1.3-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress secureimages/teamcity-agent:2020.1.3-alpine-3.12.0
2020-08-11T18:02:12.210Z        INFO    Need to update DB
2020-08-11T18:02:12.210Z        INFO    Downloading DB...
2020-08-11T18:02:22.183Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2020.1.3-alpine-3.12.0 (alpine 3.12.0)
==================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

```

## Official Docker image (~1.35GB)

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2020.1.3
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2020.1.3
2020/08/11 18:02:27 [INFO] ▶ Start clair-scanner
2020/08/11 18:02:43 [INFO] ▶ Server listening on port 9279
2020/08/11 18:02:43 [INFO] ▶ Analyzing 304740117a5a0c15c8ea43b7291479207b357b9fc08cc47a5e4a357f5e9a1768
2020/08/11 18:02:43 [INFO] ▶ Analyzing e07cf37ea90b5bbca2de1ac92fdaf18b135b6698351fc016ccdf957b14da40a4
2020/08/11 18:02:43 [INFO] ▶ Analyzing 3f2b9e84725f90338cdbeb1327d0b031a9c6eea513285b4645b7a62ff2457a07
2020/08/11 18:02:43 [INFO] ▶ Analyzing 58a62b8d255ff4ec9d9f893d106cf3927326ce75c0a97fc29e78b05f41707b51
2020/08/11 18:02:43 [INFO] ▶ Analyzing 7f3a7bb22ad918d22c2aed7b1134eb898e684b01225849347339bfbb12820be8
2020/08/11 18:02:43 [INFO] ▶ Analyzing 3b567be8cec0f7e649f106399ccb4f1c2ed47f672a550a38f6750831ddcd8cf7
2020/08/11 18:02:43 [INFO] ▶ Analyzing 1873612e7ac7f0c3f901e1e760f25c137f615dec0a315469c547f2fc211b5241
2020/08/11 18:02:43 [INFO] ▶ Analyzing 41610bac6075d7425ee2e0a2d861f6b743c4ab21bb6958e51f4fa71f1247331f
2020/08/11 18:02:43 [INFO] ▶ Analyzing 285f1c2ecc8b564dd5909858294c48d3cce6adcf8f688ca3b8611563f6ce6b24
2020/08/11 18:02:43 [INFO] ▶ Analyzing b64d60980f6df76471caed3b50c39e3ef31a9a8b3f5594a76541c0f02b2474ca
2020/08/11 18:02:44 [INFO] ▶ Analyzing 4e4c265a3988b470165959060aa5af445577b6666623db417a02ce857e712401
2020/08/11 18:02:44 [INFO] ▶ Analyzing de9f4f5a33ba0e25f9007e437af49843dd81a2cb63fe252c4c7d029ecd57563b
2020/08/11 18:02:44 [INFO] ▶ Analyzing d911eba69fc1e79e09fdb9603c6b01dec59fa567e9be38c1220fc7e19b57b6e0
2020/08/11 18:02:46 [INFO] ▶ Analyzing b758337317f4dd90186636d3647af8d08ed9f9012a9c195d27882aac87ef7bb6
2020/08/11 18:02:46 [INFO] ▶ Analyzing faf9eed468649a8ba0082650c1ac3931b3aac43284ab840196c41792e4c6023d
2020/08/11 18:02:46 [WARN] ▶ Image [jetbrains/teamcity-agent:2020.1.3] contains 56 total vulnerabilities
2020/08/11 18:02:46 [ERRO] ▶ Image [jetbrains/teamcity-agent:2020.1.3] contains 56 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress jetbrains/teamcity-agent:2020.1.3
2020-08-11T18:02:48.743Z        INFO    Need to update DB
2020-08-11T18:02:48.743Z        INFO    Downloading DB...
2020-08-11T18:03:09.962Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2020.1.3 (ubuntu 18.04)
================================================
Total: 158 (UNKNOWN: 0, LOW: 132, MEDIUM: 26, HIGH: 0, CRITICAL: 0)
```
