# BASH SCRIPT TO AUTOMATE DJANGO PROJECT SETUP

This is a simple Bash script to automate Django project set ups. I found it time consuming to set up new projects and configure the basic file structure, so this script will automate this.

First, the user is prompted to input the name of their project as they would in the `django-admin startproject` command.

Second, the user is prompted to input the name of their first app as they would in the `python manage.py startapp` command.

With this, the basic directories will be set up with the necessary code imported to the `urls.py` files in both diretores. The Bash script also creates a simple index view that returns an HttpRespose 'Hello World',

After this, users can proceed with their Django project as they wish.

### Important Note

Right now, the script does NOT add the created app to the `settings.py` file. Please do this manually. Future versions of the script will automate this. 
