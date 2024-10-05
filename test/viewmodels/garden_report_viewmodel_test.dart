import 'package:flutter_test/flutter_test.dart';
import 'package:badr_agri/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('GardenReportViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
