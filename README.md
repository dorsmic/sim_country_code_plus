# sim_country_code_plus

A Flutter plugin to get the SIM card country code.

## Features

- Get the ISO country code of the current SIM card
- Supports Android and iOS platforms
- Simple and easy to use API

## Getting started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  sim_country_code_plus: ^0.1.4
```

## Usage

```dart
import 'package:sim_country_code_plus/sim_country_code_plus.dart';

// Get the SIM country code
String? countryCode = await SimCountryCodePlus.simCountryCode;
print('SIM Country Code: $countryCode');
```

## Additional information

### Android
This plugin requires the following permissions in your Android Manifest:
```xml
<uses-permission android:name="android.permission.READ_PHONE_STATE" />
```

### iOS
Add the following keys to your Info.plist file:
```xml
<key>NSCarrierUsageDescription</key>
<string>This app needs access to carrier info to get the SIM country code</string>
```

## License

MIT License
