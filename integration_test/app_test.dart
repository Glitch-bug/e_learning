// import 'package:e_learning/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';

// void main() async {
//   Widget createWidgetUnderTest(Widget child) async {
//     return SentryProvider(
//         dsn : 'https://ac9f2dcb78b24f7999ac4afa41421cb1@o4504853871198208.ingest.sentry.io/4504853882077184';
//         // Set trancesSampleRate to 1.0 to capture 100% of transactions for performance monitoring
//         // We recommend this value in production
//         builder: (_) => MaterialApp(home:child),
//         options: SentryOptions(tracesSampleRate:1.0),
//     );
//   }

//   testWidgets("Let us begin to learn", (tester) async {
//     await tester.pumpWidget(createWidgetUnderTest() as Widget);
//   });
  
// }