#!/bin/bash

# Step 1: Prompts user to add their project names and app name
echo "Enter the Django project name:"
read project_name

echo "Enter the Django app name:"
read app_name

# Step 2: Create Django Project
django-admin startproject $project_name

# Navigate into the project directory
cd $project_name

# Step 3: Create Django App
python manage.py startapp $app_name

# Step 4: Configure urls.py in the project and app directories

# Add the app's URLs to the main urls.py file
cat > $project_name/urls.py << EOL
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('$app_name.urls')),
]
EOL

# Create a urls.py file in the app directory
cat > $app_name/urls.py << EOL
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
]
EOL

# Step 5: Create the index view in views.py
cat > $app_name/views.py << EOL
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello World")
EOL

# Step 6: Use a temporary file to edit settings.py
settings_file="$project_name/settings.py"
temp_file=$(mktemp)

awk -v app_name="'$app_name'," '
/INSTALLED_APPS = \[/ {
    print
    print "    " app_name
    next
}
{ print }
' $settings_file > $temp_file && mv $temp_file $settings_file

echo "Django project setup complete"
