# Django Project Setup Automation Script

This repository contains a simple Bash script to automate the setup of Django projects. The script streamlines the process of creating a new Django project, adding an initial app, and configuring basic file structures.

## Features

- **Automated Project Creation**: The script prompts you to input a name for your Django project, then runs `django-admin startproject` to create the project.
- **Automated App Creation**: After the project is created, the script prompts you to input a name for your first app, then runs `python manage.py startapp` to create the app.
- **URL Configuration**: The script automatically sets up the `urls.py` files in both the project and app directories, including importing the necessary modules and creating URL patterns.
- **Simple Index View**: A basic `index` view is created within the app that returns an `HttpResponse` with the text "Hello World".
- **Settings Configuration**: The script attempts to automatically add your new app to the `INSTALLED_APPS` list in the `settings.py` file, ensuring that the app is ready to use immediately.

## Usage

1. **Clone the Repository and Setup**:

   ```bash
   git clone https://github.com/paulcap510/start-django-script.git
   cd start-django-script
   ```

   It is also recommended to create and activate a virtual environment before running the script to make sure your dependencies are isolated.

   To create a virtual environment run:

   ```
   python3 -m venv venv
   ```

   To activate the environment on macOS or Linux run:

   ```
   source venv/bin/activate
   ```

   And for Windows use:

   ```
   .\venv\Scripts\activate
   ```

   Lastly, be sure to install Django with

2. **Make script Executable**:
   To make your script executable, run the following command:

   ```
   chmod +x setup_django.sh

   ```

3. **Run script**:
   ```
   ./setup_django.sh
   ```

## Notes

- The script is designed to simplify the initial setup of Django projects and is particularly useful for developers who frequently start new Django projects.
- The script has been tested on systems running Bash. If you're using a different shell, you may need to make adjustments.
- Feel free to customize the script to better suit your workflow.

## Contributing

Want to contribute to this script? If you have suggestions for improvements or additional features, please feel free to submit a pull request or open an issue. Otherwise, please reach out to me directly at [paulcapob@gmail.com.com](mailto:paulcapob@gmail.com)].
