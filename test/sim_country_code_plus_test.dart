import 'package:flutter_test/flutter_test.dart';
import 'package:sim_country_code_plus/sim_country_code_plus.dart';
import 'package:sim_country_code_plus/sim_country_code_plus_platform_interface.dart';
import 'package:sim_country_code_plus/sim_country_code_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSimCountryCodePlusPlatform
    with MockPlatformInterfaceMixin
    implements SimCountryCodePlusPlatform {

  @override
  Future<String?> getSimCountryCode() => Future.value('FR');
}

void main() {
  final SimCountryCodePlusPlatform initialPlatform = SimCountryCodePlusPlatform.instance;

  test('$MethodChannelSimCountryCodePlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSimCountryCodePlus>());
  });

  test('getSimCountryCode', () async {
    MockSimCountryCodePlusPlatform fakePlatform = MockSimCountryCodePlusPlatform();
    SimCountryCodePlusPlatform.instance = fakePlatform;

    expect(await SimCountryCodePlus.simCountryCode, 'FR');
  });
}
