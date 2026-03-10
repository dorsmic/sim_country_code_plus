import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sim_country_code_plus_method_channel.dart';

abstract class SimCountryCodePlusPlatform extends PlatformInterface {
  /// Constructs a SimCountryCodePlusPlatform.
  SimCountryCodePlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimCountryCodePlusPlatform _instance = MethodChannelSimCountryCodePlus();

  /// The default instance of [SimCountryCodePlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimCountryCodePlus].
  static SimCountryCodePlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimCountryCodePlusPlatform] when
  /// they register themselves.
  static set instance(SimCountryCodePlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getSimCountryCode() {
    throw UnimplementedError('getSimCountryCode() has not been implemented.');
  }
}
