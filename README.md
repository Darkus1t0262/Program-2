# Program-2
# My DateTime App

This is a simple .NET application that displays the current date and time.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- Docker
- .NET 8 SDK (if running locally outside of Docker)

## Building the Application

### Option 1: Build and Run using Docker

1. Clone this repository to your local machine.
   
  
   git clone https://github.com/your-username/Program-2-Datetime.git
   cd Program-2-Datetime/Datetime
 
 Build the docker image
 docker build -t my-datetime-app .
  Run the docker container
  docker run --rm my-datetime-app

2. Download from Dockerhub
docker run -p 8000:8000 --name date_time darkjus/program-2