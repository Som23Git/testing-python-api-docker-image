#Preliminary Installation Requirement

Check for Python using the command
python3 --version

If it is not installed, use Homebrew to install (MACOS)
brew install python@3

Check for pip version using the command,
pip3 --version

If it is not installed, use Homebrew to install (MACOS)
python3 get-pip.py

Post that, install the virtual environment for the Python Environment to work,
virtualenv [Give the name of the virtual Environment that you wanted]

let's assume the name as "pythonEnv"

Then, the command will look like,
virtualenv pythonEnv

NOTE: The above command will create a new folder with the name that you had provided.

Activate the virtual environment, you can find the activate program inside the binary directory of the virtual environment
source pythonEnv/bin/activate

Then, you can find the Terminal entering into the virtualenv -> pythonEnv.

To deactivate, you can use just CMD "deactivate" in the terminal.

#Python Commands required for the flask app to run,

1. We need to import Flask,
pip3 install flask

2. We need to import flask_restful
pip3 install flask_restful

Finally NOTE: Creating a Dockerfile is required and you can use $ touch Dockerfile, this will create without any issues and there is NO .format is required.

#Docker Commands 

Command [1]
docker ps -> To check the images and containers that are currently running. This should give you the below details,

CONTAINER ID - 891fc9742d6a  
IMAGE - som-flaskapp
COMMAND - "python3 app.py" -- This is taken from Dockerfile Entrypoint and CMD so this will work as a startup script.
CREATED - The time it was created eg: 9 seconds ago      
STATUS -  The up-time eg: Up 8 seconds      
PORTS  -  0.0.0.0:1020->8000/tcp -- NOTE: This is an external that we can access.
NAMES - focused_kepler    

Command[2]

docker run -it -d -p 1020:8000 som-flaskapp 

Options;

-d -> runs on daemon mode
-p -> Ports
1020 -> external port - This can be anything random and NOT mandatory to have the same port as the internal port.
8000 -> This is the internal port where the Flask app is running. Make sure, this port is the same.

Command[3]

docker build -t som-flaskapp:latest .

syntax: docker build -t [imagename:tag] [source_directory]

This will collate all the requirements.txt and the Dockerfile to build a docker container. 







