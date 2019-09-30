This small example creates 2 containers in a POD. Both containers have access to the hostPath volume (which is local to the laptop).

The first container starts a nginx server. The second container populates the index.html that is used by the first container.

Note: To check the process has worked, either connect to the nginx pod, apt-get update, install curl and point to http://localhost OR run kubectl port-forward $POD_CONTAINER 32000:80, then use the laptop browser and go to http://localhost:32000. 

Another way is to connect to the container, and check the file in /usr/local/nginx/html/index.html

