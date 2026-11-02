#This is a base image for a project 

FROM python:3.14

#Created a working directory for the project inside container 

WORKDIR /app

#Copied the code to the /app in the container 

COPY . /app

#installing the dependencies for the project 

RUN pip install -r requirements.txt

# Start the Django development server on port 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
