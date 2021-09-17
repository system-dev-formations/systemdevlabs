
Installation des metrics
```
cd ~/k8s-webforce3/lab-metrics-server && k create -f components.yaml
```{{ execute T1 }}

Wait a little bit and Check 
```
k top nodes
```{{ execute T1 }}

```
k top pods
```{{ execute T1 }}
