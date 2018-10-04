# wifluttings

Redirect your Flutter application to the Native WiFi Settings.

[![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)](https://pub.dartlang.org/packages/wifluttings)

## Features

- Open the Native Wifi Settings on:
    - **Android**
    - **iOS**

## Preview

![preview](https://media.giphy.com/media/1jY48ouM5WSidIwVdh/giphy.gif)

## Getting Started

First, you need add **wifluttings** in the dependencies list:

```yalm
dependencies:
  wifluttings: 0.1.0
```

Then, you will need import the class:

```dart
import 'package:wifluttings/wifluttings.dart';
```

Finally, you could redirect your application to the Native WiFi Settings with:

```dart
Wifluttings.openNativeWifiSettings;
```

if you need check if the settings was opened, you could check the **wifluttings** response like:

```dart
bool settingsWasOpened = await Wifluttings.openNativeWifiSettings; 
``` 
