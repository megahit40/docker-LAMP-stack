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
git clone https://github.com/megahit40/a-team.git
```

Repo is now copied and you'll see a folder ```/home/user/git/a-team```.

cd into the webserver directory:

```bash 
cd /home/user/git/a-team/webserver/
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
You can now edit the files in ```/home/user/git/a-team/webserver/public-html/``` and reload the browser to see the changes.

#NB

In order for the live chat to work:
```bash
chmod 606 /home/user/git/a-team/webserver/public-html/site/livechat/log.html
```
606 gives read and write permissions to "user" and "others". 666 will include "group".

# Updating 

To update the repo:
```bash
cd /home/user/git/a-team
git pull 
```

To upload changes:
```bash
cd /home/user/git/a-team
git add 'name of file' 
git commit
```

A text editor will open and you'll write a comment about the change, save and exit.
Then:
```bash
git push
```

Voila!
