# Django Project Setup Automation Script

This repository contains a simple Bash script to automate the setup of Django projects. The script streamlines the process of creating a new Django project, adding an initial app, and configuring basic file structures.

## Features

- **Automated Project Creation**: The script prompts you to input a name for your Django project, then runs `django-admin startproject` to create the project.
- **Automated App Creation**: After the project is created, the script prompts you to input a name for your first app, then runs `python manage.py startapp` to create the app.
- **URL Configuration**: The script automatically sets up the `urls.py` files in both the project and app directories, including importing the necessary modules and creating URL patterns.
- **Simple Index View**: A basic `index` view is created within the app that returns an `HttpResponse` with the text "Hello World".
- **Settings Configuration**: The script attempts to automatically add your new app to the `INSTALLED_APPS` list in the `settings.py` file, ensuring that the app is ready to use immediately.

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/paulcapo510/start-django-script.git
   cd start-django-script
   ```
