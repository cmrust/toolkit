# toolkit

[Docker image](https://hub.docker.com/r/cmrust/toolkit/) with some goodies preinstalled

```
kubectl -n namespace apply -f https://raw.githubusercontent.com/cmrust/toolkit/master/toolkit-deployment.yaml
kubectl -n namespace get pods
kubectl -n namespace exec -it toolkit-deployment-1234567890-abcde -- /bin/bash
```
