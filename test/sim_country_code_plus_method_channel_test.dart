import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sim_country_code_plus/sim_country_code_plus_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelSimCountryCodePlus platform = MethodChannelSimCountryCodePlus();
  const MethodChannel channel = MethodChannel('sim_country_code_plus');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return 'FR';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getSimCountryCode', () async {
    expect(await platform.getSimCountryCode(), 'FR');
  });
}
