# STO-Project : AI-Driven Road Traffic density Estimation and Monitoring System

## Overview

This project focuses on designing and developing an AI-driven road traffic estimation and monitoring system. The system utilizes real-time video feeds from traffic cameras to detect and count vehicles, estimate traffic congestion levels, predict future traffic density, and provide insights for decision-making. The system also includes an alarming feature to detect and respond to traffic incidents such as breakdowns and accidents. The processed data is posted to a web system accessible by two types of users: Normal Users and Traffic Officers.

## Features

- **Real-Time Traffic Monitoring**: The model receives and processes video feeds from multiple traffic cameras.
- **Vehicle Detection and Counting**: Uses the YOLO (You Only Look Once) model to detect and count vehicles.
- **Congestion Level Estimation**: Estimates traffic congestion levels on a nominal scale.
- **Traffic Density Prediction**: Predicts next hour traffic density based on current data.
- **Travel Time Estimation**: Estimates the time required to reach a destination using an integrated map.
- **Decision-Making Insights**: Provides insights based on the nature of the traffic to assist in decision-making such as re-routing
- **Alarming System**: Triggers alarms based on congestion thresholds to detect challenges such as breakdowns and accidents.
- 
- **Web System Integration**: Data is posted to a web system with two user roles: Normal User and Traffic Officer.


## User Roles

### Normal User

- View traffic density data.
- Estimate distance to their destination.
- Check rerouting options.
- Receive notifications about traffic conditions.

### Traffic Officer

- Monitor raw data from cameras.
- View processed data.
- Send notifications to road users.
- Access graphical presentations of data.
- Respond to alarms and incidents.

## Project Scope

The Smartcity Traffic Officer (STO) project aims to leverage AI and machine learning to estimate and control traffic density in Dar es Salaam, Tanzania. Key functionalities include:

1. Realtime traffic density estimation using YOLO-based AI models.
2. Optimization of traffic signal timings and rerouting of traffic based on density data.
3. Providing data-driven insights for city planners and traffic management authorities.
4. Enhancing commuter experience by reducing travel times and improving road safety.

## Technical Stack

### Programming Languages

- Python (for backend development and machine learning model implementation)
- JavaScript (for frontend development)

### Frameworks/Libraries

- TensorFlow/Keras (for training and deploying YOLO models)
- OpenCV (for video processing)
- Flask/Django (for backend development)
- React (for frontend development)

### External AI Models

- YOLO (You Only Look Once) for real-time object detection

### Tools

- Git (for version control)
- Roboflow (for data labeling and annotation)
- Jupyter Notebook (for model training and experimentation)
- PostgreSQL (for database management)
- Docker (for containerization)
- GCP (Google Cloud Platform for computing and deployment services)

## Team

- **Team**: Godwin S. Aruga


## Usage

1. **Camera Setup**: Ensure that your traffic cameras are positioned correctly and streaming video feeds to the system.
2. **Data Processing**: The AI model will process the video feeds, detect and count vehicles, estimate congestion levels, and predict future traffic density.
3. **Web Interface**: Access the web interface to view real-time traffic data and insights.
   - Normal Users can view traffic density, estimate travel times, check rerouting options, and receive notifications.
   - Traffic Officers can monitor raw data, view processed data, send notifications, view graphical data presentations, and respond to alarms.



## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For any questions or feedback, please contact Cybercoders Team at [arugagodwin@gmail.com].

