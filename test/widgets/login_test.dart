import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/page/login/login.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../matchers/matchers.dart';
import '../mocks/mock_service_locator.dart';

main() {
  setupTestLocator();
  testWidgets('Should display background image when login page is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Login()));
    final widget = find.byWidgetPredicate((widget) {
      if (widget is Container)
        return widget.decoration ==
            BoxDecoration(
              image: DecorationImage(
                image: AssetImage(LOGIN_BACKGROUND_PATH),
                fit: BoxFit.cover,
              ),
            );
      return false;
    });
    expect(widget, findsOneWidget);
  });
  testWidgets('Should display logo when login page is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Login()));
    final widget = find.byWidgetPredicate((widget) {
      if (widget is Image) return widget.image == AssetImage(LOGIN_LOGO_PATH);
      return false;
    });
    expect(widget, findsOneWidget);
  });
  testWidgets('Should display login text field when login page is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Login()));
    final widget = find.byWidgetPredicate((widget) => loginTextFieldMatcher(widget: widget, hint: 'E-MAIL', layout: TextFieldLayout.fill));
    expect(widget, findsOneWidget);
  });
  testWidgets('Should display pswd text field when login page is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Login()));
    final widget = find.byWidgetPredicate((widget) => loginTextFieldMatcher(widget: widget, hint: 'SENHA', layout: TextFieldLayout.fill));
    expect(widget, findsOneWidget);
  });
}
