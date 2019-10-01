This small example creates 3 replicas of the nginx pod container, along with 3 replicas of the nginx-setup. All containers have access to the same hostPath volume (which is local to the laptop). Each of the nginx-setup pods update the same index.html file, but for a different nginx pod. As the date command can be different from each nginx-setup, each nginx instance should display contents according to the latest nginx-setup run ie. latest date.

The first container starts a nginx server. The second container populates the index.html that is used by the first container.

Note: To check the process has worked, either connect to the nginx pod, apt-get update, install curl and point to http://localhost OR run kubectl port-forward $POD_CONTAINER 32000:80, then use the laptop browser and go to http://localhost:32000. 

Another way is to connect to the container, and check the file in /usr/local/nginx/html/index.html

