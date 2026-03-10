// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing


import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:sim_country_code_plus/sim_country_code_plus.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('getSimCountryCode test', (WidgetTester tester) async {
    final String? countryCode = await SimCountryCodePlus.simCountryCode;
    // The country code should be a non-empty string if a SIM is present
    expect(countryCode?.isEmpty ?? true, isFalse);
  });
}
