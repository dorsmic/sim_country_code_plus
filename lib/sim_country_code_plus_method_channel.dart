import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sim_country_code_plus_platform_interface.dart';

/// An implementation of [SimCountryCodePlusPlatform] that uses method channels.
class MethodChannelSimCountryCodePlus extends SimCountryCodePlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sim_country_code_plus');

  @override
  Future<String?> getSimCountryCode() async {
    final String? countryCode = await methodChannel.invokeMethod<String>('getSimCountryCode');
    return countryCode;
  }
}
