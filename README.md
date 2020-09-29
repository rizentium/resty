# resty

Resty will help you to find the best dining place near your location.

## Installation

### Requirements
- [Android SDK](https://developer.android.com/studio/)
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio/) (Optional)
- [VS Code](https://code.visualstudio.com/) (Optional)

Make sure Flutter SDK path has registered successfully.

You can check by using your `terminal` or `cmd` using this following command
```bash
flutter doctor
```

You will get this result, if the path has registered correctly

```bash
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel unknown, 1.20.4, on Microsoft Windows [Version 10.0.19041.508], locale en-ID)

[√] Android toolchain - develop for Android devices (Android SDK version 30.0.2)
[√] Android Studio (version 4.0)
[√] VS Code (version 1.49.2)
[!] Connected device
    ! No devices available

! Doctor found issues in 1 category.
```


### Clone Repository

You can clone this repository by using git cli
```bash
git clone https://github.com/rizentium/resty.git
```

### Build

Install all dependencies before build the source

```bash
flutter pub get
```

Use `flutter` command to build apk

```bash
flutter build apk
```

Use `--debug` or `--release` as argument based on your preference

You will see the result at `build/app/outputs/flutter-apk/app-debug.apk`. 

Now you can transfer the apk in your phone or just want to run it in your emulator device.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.