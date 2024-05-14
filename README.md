# TikTok Clonee
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

    Flutter (vX.X.X or above)
    Dart (vX.X.X or above)
    An IDE (VSCode, Android Studio, or IntelliJ)
    Installation
    Clone the repository:

    bash
    git clone https://github.com/yourusername/tiktok-clone.git
    cd tiktok-clone
    Install dependencies:

    bash
    Copiar código
    flutter pub get

# Configure Supabase:

    Create a new project in Supabase.

    Configure the database using schema.sql.
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

# Screenshots
![Apple iPhone 11 Pro Max Screenshot 0](https://github.com/DevLuiscode/tiktokclone/assets/146896025/f3bde70e-17f1-4b4b-860d-7783a10ff887)
![Apple iPhone 11 Pro Max Screenshot 1](https://github.com/DevLuiscode/tiktokclone/assets/146896025/54b260e5-afc7-4450-8683-290fdcf22439)
![Apple iPhone 11 Pro Max Screenshot 2](https://github.com/DevLuiscode/tiktokclone/assets/146896025/e74495d2-78c0-443e-8057-3ebdc737f377)


# Contributions
    Feel free to contribute to this project! Fork the repository and submit pull requests with the proposed changes is for educational use.
