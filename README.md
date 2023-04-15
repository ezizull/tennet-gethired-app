# Frontend Engineer - Diet App

This repository contains the codebase for a diet tracking application built with Flutter and the GetX library. The app is designed for Android and web platforms, and follows a clean architecture inspired by getcli.

## Technologies Used

- Flutter: a cross-platform mobile development framework
- GetX: a lightweight state management library for Flutter
- Font Awesome: a popular icon set for web and mobile applications
- Clean architecture: a modular and scalable software architecture pattern

## Installation

### Clone project

```bash
  https://github.com/ezizull/tennet-gethired-app.git
  cd tennet-gethired-app
```

### Install Packages

```bash
  flutter pub get
```

### Run in Developer Env

```bash
  flutter run
```

### Build for Android

```bash
  flutter build apk
  cd build/app/outputs/apk/release
```

##### install **app-release.apk** to **Phone** or **Emulator**

####

If you prefer not to build the APK file yourself, you can download this file and install it.

[![Android App](https://img.shields.io/badge/Android%20App-78C257?style=for-the-badge&logo=android&logoColor=white)](https://github.com/ezizull/tennet-gethired-app/blob/master/build/app/outputs/flutter-apk/app-release.apk)

### Build for Web

```bash
  flutter build web
  cd build/web
  python -m http.server 5050
```

open URL **localhost:5050** in the browser

####

If you prefer not to build the Web files yourself, you can download this directory.

[![Website App](https://img.shields.io/badge/Website%20App-0078D7?style=for-the-badge&logo=google-chrome&logoColor=white)](https://github.com/ezizull/tennet-gethired-app/tree/master/build/web)

```bash
  # extract it
  cd to_project_name
  python -m http.server 5050
```

###

Or you cant just **run** my latest build. Using 1 of 2 command below

```bash
  cd build/web
  python -m http.server 5050
```

```bash
  cd build/web
  python -m http.server 5050 --directory build/web
```
