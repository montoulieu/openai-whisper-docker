# Use python:3.10-slim as our base image
# This image is based on Debian, and contains a minimal set of packages
FROM python:3.10-slim

# Set the working directory to /python-docker
WORKDIR /python-docker

# Copy the file requirements.txt to the working directory
COPY requirements.txt requirements.txt

# Install git using apt-get
RUN apt-get update && apt-get install git -y

# Install the packages listed in requirements.txt using pip
RUN pip3 install -r requirements.txt

# Install openai-whisper using pip
RUN pip3 install -U openai-whisper

# Install ffmpeg using apt-get
RUN apt-get install -y ffmpeg

# Copy the contents of the local directory to the working directory
COPY . .

# Expose port 5000 to the host machine
EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
