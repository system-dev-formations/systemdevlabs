Download kubectl application
```
cd && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```{{execute T1}}


Installer kubectl application
```
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```{{execute T1}}