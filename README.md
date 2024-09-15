# Configuring an AWS Lambda Target on an Application Load Balancer 🛠️

This project demonstrates how to integrate an AWS Lambda function with an Application Load Balancer (ALB) for serverless HTTP request handling. By configuring an ALB to target a Lambda function, you can build serverless applications that respond to HTTP requests with ease. 🚀

## Project Overview 🌐

The Application Load Balancer (ALB) supports content-based routing and distributes traffic across multiple targets, including AWS Lambda functions. This setup allows you to use an ALB as the HTTP frontend for your serverless application.

### Key Steps 📋

1. **Create an AWS Lambda Function:** A Python-based Lambda function is provided (see `lambda_function.py`), which retrieves an HTML file from an Amazon S3 bucket. Customize this function to suit your needs. 🐍

2. **Configure Application Load Balancer:**
   - **Listener Rule:** Set up a listener rule to route incoming HTTP requests to the Lambda function. ⚙️
   - **Target Group:** Create a target group that includes the Lambda function, enabling the ALB to invoke it. 🎯

3. **Deploy and Test:** Deploy the Lambda function and configure the ALB settings. Ensure that HTTP requests routed through the ALB are properly handled by the Lambda function and that the HTML file is correctly retrieved from the S3 bucket. ✅

## Files 📂

- `lambda_function.py`: Contains the Python code for the Lambda function. 📜
- `configurations.md`: Provides detailed instructions for configuring the ALB and Lambda function. 📝

## Prerequisites 🛠️

- An AWS account 🌍
- Basic understanding of AWS Lambda and Application Load Balancers 📚
- AWS CLI configured on your local machine 🖥️
 
## ScreenShots
![BeFunky-collage (3)](https://github.com/user-attachments/assets/c02b71f2-5a92-45ea-9e21-a506f853aeff)

![alb3](https://github.com/user-attachments/assets/e380c5c5-fffb-483b-8cd7-c9cb50f58db6)

