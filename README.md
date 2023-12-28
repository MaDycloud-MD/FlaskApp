# Flask Application Deployed on Azure Web Apps

## Description
This repository contains a simple Flask application deployed on Azure Web Apps.

## Application Endpoint
The application has a single endpoint:
- `/`: Returns "Hello, Azure Web Apps!" when accessed.

## Deployment Steps
1. Create a Flask application with the specified endpoint.
2. Sign in to the Azure portal and create a new Web App resource.
3. Connect the GitHub repository to the Azure Web App for continuous deployment.
4. Configure any necessary environment variables (e.g., FLASK_ENV).
5. Access the deployed Azure Web App URL to verify functionality.

## Repository Structure
- `app.py`: Flask application code.
- `requirements.txt`: Required Python packages.

## Deployment Notes
- Ensure the necessary dependencies are listed in requirements.txt.
- Check Azure Web App configurations for environment variables or other settings.

## Accessing the Deployed Application
- Deployed Application URL: [https://randomflaskapp.azurewebsites.net/]

## Deployment Command
To deploy the Flask application to Azure Web Apps, use the following Azure CLI command:

```bash
az webapp up -n randomflaskapp


