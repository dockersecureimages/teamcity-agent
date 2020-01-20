# JetBrains TeamCity Agent

JetBrains TeamCity Agent, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/teamcity-agent:2019.2-alpine-3.11.3
2020/01/20 20:52:41 [INFO] ▶ Start clair-scanner
2020/01/20 20:52:46 [INFO] ▶ Server listening on port 9279
2020/01/20 20:52:46 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 20:52:46 [INFO] ▶ Analyzing 50626114b07998976f8458cab0f8675a25dc3e473db7fb465e9cdd7a34b7f4c4
2020/01/20 20:52:48 [INFO] ▶ Analyzing d48d0e83f5d14f77929bbe97a4e435e994a20ac1d3a5e9d683a1f596305ef2e9
2020/01/20 20:52:48 [INFO] ▶ Analyzing bd94b01742763b6fa6c45546ceb8c8028705b0777dc64694f01755018b49ce4e
2020/01/20 20:52:48 [INFO] ▶ Analyzing 4e671ed91d30905085bb3433ce666854ec6a45df515b7b15d4fc0587eaea3fa7
2020/01/20 20:52:48 [INFO] ▶ Analyzing 709371f27aeeb6acb7712d766fd2a67a02d6a5c8acbeb96858878ccc3222c39c
2020/01/20 20:52:48 [INFO] ▶ Analyzing bd28c1132a7c05eb65579e8e3f1f784f63762197fbd4f0d543686ba2dcb46cba
2020/01/20 20:52:48 [INFO] ▶ Image [secureimages/teamcity-agent:2019.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/teamcity-agent:2019.2-alpine-3.11.3
2020-01-20T18:53:03.192Z        INFO    Need to update DB
2020-01-20T18:53:03.192Z        INFO    Downloading DB...
2020-01-20T18:53:07.115Z        INFO    Reopening DB...
2020-01-20T18:53:13.392Z        INFO    Detecting Alpine vulnerabilities...

secureimages/teamcity-agent:2019.2-alpine-3.11.3 (alpine 3.11.3)
================================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull jetbrains/teamcity-agent:2019.2
```

Security scanning using Clair
```
clair-scanner jetbrains/teamcity-agent:2019.2
2020/01/20 20:53:31 [INFO] ▶ Start clair-scanner
2020/01/20 20:53:50 [INFO] ▶ Server listening on port 9279
2020/01/20 20:53:50 [INFO] ▶ Analyzing 9ff0fa26194aa4c4dba5a14b2999adf0f22bf2b630fb82efd3e4abbb60fd28bf
2020/01/20 20:53:50 [INFO] ▶ Analyzing 46861108e09e8a0fb3723460aefce0c571b132405fa77cea31fc0bab2827299f
2020/01/20 20:53:50 [INFO] ▶ Analyzing c0f55318a616c9ddf316e9c5700c48682366cb27b70099fc0616109dc252fd56
2020/01/20 20:53:50 [INFO] ▶ Analyzing db0a25fcb8b45344d056f17a747e5a1fd91c6bd9d714e127164076a42b7f55ab
2020/01/20 20:53:50 [INFO] ▶ Analyzing d9f969b53e769206ae7afa1683bc696aa63da78c1acd76e07e2535982bf5ff2b
2020/01/20 20:53:50 [INFO] ▶ Analyzing 5bd770d21d0ae952f3e36933affcd67d3855f35d52dc4a42bdcb9baa52382e74
2020/01/20 20:53:50 [INFO] ▶ Analyzing 4f5a17dadf33e9573750a302e44c88310c17b8fd983db5bd34423061636e0a9d
2020/01/20 20:53:50 [INFO] ▶ Analyzing 62280e0e9972ca11924230141b3639ea61c092cdbc1e5c077afb5c576bb9ccfc
2020/01/20 20:53:50 [INFO] ▶ Analyzing bc72881777ebabacce72e74fd6371990bcbd99f2432fdf708594587285e5a972
2020/01/20 20:53:50 [INFO] ▶ Analyzing ffb3f9813cb0f0f581cdd40c139a082df8e5bac489e7216befbf9e6cbc04198f
2020/01/20 20:53:50 [INFO] ▶ Analyzing 5307b58b7ef23b5b550398e1151366a870d36259ae1c04ed88cf9ac2bcb6b311
2020/01/20 20:53:50 [INFO] ▶ Analyzing 2e0c1aef5fe9c48874bd8532ef6100b0f6540fb11f0f6a8c8b389038d1d8e6b4
2020/01/20 20:53:51 [INFO] ▶ Analyzing 090256176a292a966f6651857eb099aa40d5d2f73283cd7c1989f57846b9bf8d
2020/01/20 20:53:51 [INFO] ▶ Analyzing f450e3daf2f24b4ec3aa75698dde4019088777229890972c8d7485f32064230c
2020/01/20 20:53:51 [WARN] ▶ Image [jetbrains/teamcity-agent:2019.2] contains 78 total vulnerabilities
2020/01/20 20:53:51 [ERRO] ▶ Image [jetbrains/teamcity-agent:2019.2] contains 78 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress jetbrains/teamcity-agent:2019.2
2020-01-20T18:54:12.472Z        INFO    Need to update DB
2020-01-20T18:54:12.472Z        INFO    Downloading DB...
2020-01-20T18:54:16.469Z        INFO    Reopening DB...
2020-01-20T18:54:32.614Z        INFO    Detecting Ubuntu vulnerabilities...

jetbrains/teamcity-agent:2019.2 (ubuntu 18.04)
==============================================
Total: 210 (UNKNOWN: 0, LOW: 38, MEDIUM: 131, HIGH: 40, CRITICAL: 1)
```
