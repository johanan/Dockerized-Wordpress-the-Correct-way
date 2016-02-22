# Wordpress on Docker the correct way
This project is designed to create a series of Docker containers running Wordpress. The modifier "correct way" is used because this process uses multiple containers instead of stuffing everything into one container. This makes the entire process more robust and extensible.

## Get Started
The first thing you need to do is install Ansible. I recommend using a virtualenv and installing from the requirements.txt in the root.

Next install Vagrant.

Finally rename example_env to .env and set the values. The values are as follows:
- MYSQL_ROOT_PASSWORD - the root password for MySQL
- MYSQL_USER - the user your site will use
- MYSQL_PASSWORD - the password for the user
- MYSQL_DATABASE - the name of the database for your site
- NEWUSER - a username that will be created on the server
- SSH_KEY - the path to the SSH key for the created user

## Videos
I have created a [playlist](https://www.youtube.com/playlist?list=PLCxhJ1rikyTpo4Ji_fhWuidxuiB5dywNk) on YouTube that covers the entire process. Watch them for more information.
