// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:leehs_brandi/app.dart';
import 'package:leehs_brandi/globals.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    registeGlobals();
    await tester.pumpWidget(Provider<AppGlobalBloc>(
        dispose: (_, x) => x.dispose(),
        create: (_) => AppGlobalBloc(),
        child: const App()));

    expect(find.text('이현식 DEMO'), findsNothing);
    await locator.allReady();
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('이현식 DEMO'), findsOneWidget);

    expect(find.byType(TextFormField), findsOneWidget);

    await tester.enterText(find.byType(TextFormField), '하하하하');
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('하하'), findsNothing);
    expect(find.text('하하하하'), findsOneWidget);
  });
}
