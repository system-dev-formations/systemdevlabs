Clean up the environment
```
docker rm -f $(docker ps -aq)
```{{execute T1}}
we apply ```docker rm -f```  to the list of uuid containers with  -aq 

### Images clean up  
```
docker rmi -f $(docker images -q)
```{{execute T1}}
We apply  ```docker rmi -f ``` to the list of uuid images with -q

