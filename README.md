# Speech Analysis Web Application

## Overview
A Flask-based web application that provides speech-to-text and text-to-speech capabilities using Google Cloud Platform's AI services. The application offers real-time audio recording, transcription, sentiment analysis, and text-to-speech conversion.

## Features

### Speech-to-Text
- Browser-based audio recording
- Real-time audio capture and processing
- Transcription using Google Cloud Speech-to-Text API
- Sentiment analysis of transcribed text
- Audio file management system

### Text-to-Speech
- Text input for speech synthesis
- High-quality speech generation using Google Cloud Text-to-Speech API
- Audio playback functionality
- Download capabilities for generated audio

## Technical Stack
- **Backend:**
  - Python 3.x
  - Flask Web Framework
  - Google Cloud Speech-to-Text API
  - Google Cloud Text-to-Speech API
  - Google Cloud Language API
  
- **Frontend:**
  - HTML5/CSS3
  - JavaScript (MediaRecorder API)
  - Responsive Design

- **Cloud Services:**
  - Google Cloud Platform
  - Cloud Secret Manager
  - Cloud Storage

## Project Structure
\\\
cap5930_project2/
├── templates/
│   └── index.html          # Main web interface
├── uploads/                # Storage for audio files
├── main.py                # Flask application
├── script.js              # Frontend JavaScript
├── requirements.txt       # Python dependencies
└── Dockerfile            # Container configuration
\\\

## Setup Instructions

1. Install Dependencies
\\\ash
pip install -r requirements.txt
\\\

2. Configure Google Cloud Credentials
- Set up a Google Cloud Project
- Enable required APIs:
  - Speech-to-Text
  - Text-to-Speech
  - Cloud Language
- Set up service account and download credentials

3. Run the Application
\\\ash
python main.py
\\\

## API Endpoints

- \/\ - Main application interface
- \/upload\ - Handle audio file uploads
- \/upload_text\ - Process text-to-speech requests
- \/uploads/<filename>\ - Serve stored files

## Environment Variables
- \PORT\: Server port (default: 8080)
- \GOOGLE_APPLICATION_CREDENTIALS\: Path to service account key

## Development

### Local Development
\\\ash
# Run in debug mode
python main.py
\\\

### Docker Deployment
\\\ash
docker build -t speech-analysis-app .
docker run -p 8080:8080 speech-analysis-app
\\\

## Security Features
- Secure file upload handling
- Google Cloud Secret Manager integration
- File type validation
- Secure file serving

## License
[Specify License]

## Contributors
[Your Name/Team]

## Acknowledgments
- Google Cloud Platform
- Flask Framework
- Web Audio API
