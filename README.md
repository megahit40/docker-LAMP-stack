## Instructions:

Prerequisites:

- git
- docker
- docker-compose

Open a terminal, make a local directory on your host (PC) for this repo, and cd into the directory.

E.g.:
```bash
mkdir /home/user/git
cd /home/user/git/
```

### Clone this repo to your folder:

```bash
git clone https://github.com/megahit40/docker-LAMP-stack.git
```

cd into the webserver directory:

```bash 
cd ./webserver/
```
Run ```ls``` and you'll see the ```docker-compose.yml``` file.

For persistant database storage, create folder ```./db_storage```!
Or delete the ```volumes:``` line under ``` service: msql``` in ```docker-compse.yml```.
NB! This folder must not be pushed to repo.

To start the service:
```bash
sudo docker-compose up
```

To stop the service:
```bash
sudo docker-compose down
```
... or &lt;ctrl&gt;+c ...

In a browser, visit ```http://localhost:8080```.
You can now edit the files in ```/webserver/public-html/``` and reload the browser to see the changes.

# Updating 

To update the repo:
```bash
cd /home/user/git/a-team
git pull 
```
#NB

Site root is /webserver/public-html/site
e.g. index.php / index.html goes there.
