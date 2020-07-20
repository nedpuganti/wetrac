# wetrac

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## commands
- flutter create .
- flutter analyze -v
- flutter doctor -v
- flutter build apk --debug
- flutter build apk -t lib/main_dev.dart --debug
- flutter build apk --verbose
- flutter clean
- flutter build apk

production android build
flutter build appbundle -t lib/main_prod.dart

ios build
flutter build ios -t lib/main_prod.dart

<!-- https://www.youtube.com/watch?v=FdgDgcrDeNI -->
<!-- ref: https://kobiton.com/topics/develop-deploy-and-test-flutter-apps/ -->

## build fastlane

cd ios
fastlane beta

https://docs.fastlane.tools
https://flutter.dev/docs/deployment/cd

## build models

-[Ref:](https://flutter-academy.com/work-with-json-in-flutter-part-2-json-serializable/)
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter packages pub run build_runner build

## launcher icons

- flutter pub get
- flutter pub run flutter_launcher_icons:main

## Build Env

- [Ref:](https://stackoverflow.com/questions/47438564/how-do-i-build-different-versions-of-my-flutter-app-for-qa-dev-prod)
- [Ref2:](https://medium.com/@LohaniDamodar/flutter-separating-build-environment-with-multiple-firebase-environment-92e40e26d275)

## Navigation Service

- [Ref:](https://github.com/FilledStacks/flutter-tutorials/tree/f5b09c7d75ad060e3e6199064ca810e65e751de4/025-navigation-service)

## Route Animations

- [Ref:](https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823)

## Stripe payment

https://tipsi.github.io/tipsi-stripe/docs/completeapplepayrequest.html

## clean

/Users/inarenedpuganti/flutter/bin
rm -rf cache && flutter doctor -v

## Buttons Design

- [Ref:](https://stackoverflow.com/questions/49442247/round-button-with-text-and-icon-in-flutter)

## Borders

-[Ref:](https://stackoverflow.com/questions/50756745/custom-card-shape-flutter-sdk)

## drag & expand

https://morioh.com/p/6a7e7f045c74
https://stackoverflow.com/questions/57233622/flutter-draggablescrollablesheet-doesnt-show-up-by-pressing-button

## full screen dialog

https://fidev.io/full-screen-dialog/

## dart help

https://medium.com/flutter-community/simple-and-bug-free-code-with-dart-operators-2e81211cecfe

## flutter Analytics

https://medium.com/@gaspard.merten/firebase-analytics-and-flutter-340f01ad8636
https://medium.com/flutterpub/using-firebase-analytics-in-flutter-2da5be205e4

https://stackoverflow.com/questions/5025256/how-do-you-specify-command-line-arguments-in-xcode-4

## sentry

https://dev.to/mhadaily/how-to-capture-errors-and-send-platform-specific-information-to-sentry-in-flutter-4l6m

##

flutter packages pub run build_runner build

## JsonSerializable

https://github.com/dart-lang/json_serializable/blob/master/example/lib/example.dart

## Deserialize

https://medium.com/flutter/some-options-for-deserializing-json-with-flutter-7481325a4450

## streams

https://medium.com/@ayushpguptaapg/using-streams-in-flutter-62fed41662e4
https://blog.codeminer42.com/build-your-first-app-with-flutter-getting-data-from-api-c9fb4c2a6812/
https://creativebracket.com/how-to-use-streams-in-dart-2/
https://medium.com/flutter-community/understanding-streams-in-flutter-dart-827340437da6

## Access the Index on Dart List.map()

https://fireship.io/snippets/dart-how-to-get-the-index-on-array-loop-map/

## Localization

https://github.com/ResoCoder/flutter_localization_tutorial/blob/master/lib/main.dart
https://github.com/mohamedHassanKa/flutter_internationalization/blob/master/lib/main.dart


## state
https://medium.com/@baranmichal25_54778/scaling-up-simple-app-state-management-6c22d0a83da5