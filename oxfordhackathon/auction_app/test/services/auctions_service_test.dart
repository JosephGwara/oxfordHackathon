import 'package:flutter_test/flutter_test.dart';
import 'package:auction_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AuctionsServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
