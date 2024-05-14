![MasterHeader](https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/tiktokclone.webp)

## Download APK
Download the latest version of the app:
<a href="[https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/weather_app.apk?t=2024-05-14T22%3A39%3A11.594Z](https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/tiktok_clone.apk?t=2024-05-14T20%3A22%3A31.220Z)">Download APK</a>

# TikTok Clone
    Welcome to the repository for my TikTok clone, a mobile application designed to emulate the essential features of the popular social media platform, TikTok. This project showcases my expertise in mobile app development using Flutter and demonstrates advanced techniques in real-time data handling with Supabase, employing clean architecture principles and state management with Flutter Bloc.

# Features

    Video Streaming: Users can watch videos on the "For You" and "Following" pages with smooth playback.

    Clean Architecture: The app is structured using clean architecture, ensuring scalability, maintainability, and testability.

    Flutter Bloc: Utilizes Flutter Bloc for efficient state management across different app modules.

# Technologies Used
    Flutter: For crafting high-quality cross-platform mobile applications.
    Supabase: Backend service used for real-time database interactions, authentication, and storage.
    Dart: The programming language used alongside Flutter.
# Project Structure
    For You Page: Displays a stream of videos tailored to user preferences.
    Following Page: Shows videos from followed users.
    Profile Page: Allows users to manage their profile and view their own video uploads.

# Getting Started
    Prerequisites
    You will need the following tools installed on your machine:

    Flutter 3.19.3
    Dart 3.3.1
    An IDE (VSCode, Android Studio, or IntelliJ)
    Installation
    Clone the repository:

    bash
    git clone https://github.com/DevLuiscode/tiktokclone.git
    cd tiktok-clone
    Install dependencies:
    flutter pub get

# Configure Supabase:

    Create a new project in Supabase.

    Configure the database using schema.sql.
<img src="https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/profile/schemesql.webp" alt="scheme" width="900" height="600"/>
    
    Set up your unique Supabase URL and anonymous key in the Flutter app.
    Create an env.json file in the root path:
    {
     "supabase-url": "",
     "supabase-key": ""
    }
    Have the .vscode folder in the main root, then create a launch.json file and have this configuration (this configuration is to safely handle the apikys):
    {
     "version": "0.2.0",
     "configurations": [
         {
             "name": "Launch",
             "request": "launch",
             "type": "dart",
             "program": "lib/main.dart",
             "args": [
                 "--dart-define-from-file",
                 "env.json"
             ]
         }
     ]
    }


# Architecture
    This project adheres to clean architecture guidelines, which are structured as follows:

    Data Layer: Manages data transactions and transformations to and from the database.

    Domain Layer: Contains business logic and entities.

    Presentation Layer: Comprises UI components and state management handled by Flutter Bloc.

# Contributions
    Feel free to contribute to this project! Fork the repository and submit pull requests with the proposed changes is for educational use.
