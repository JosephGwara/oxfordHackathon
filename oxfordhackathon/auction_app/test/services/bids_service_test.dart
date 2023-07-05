import 'package:flutter_test/flutter_test.dart';
import 'package:auction_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('BidsServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}