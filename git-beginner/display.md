move to the app using docker 
```
cd ~ && cd go-web-server/go-web-server
```{{execute T1}}

Copy the current calc.html file to page.html 
```
cp /root/calc2/calc.html page.html 
```{{execute T1}}

Build a docker image
```
docker build -t go-web-server2 .
```{{execute T1}}

Run the container 
```
docker run -p 80:8080 go-web-server2
```{{execute T1}}

select the tab ( +)  and select port to view HTTP port 80 on host 1

In the console type *ctrl-C* to get out




