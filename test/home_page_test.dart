import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';
import 'package:user_list/dependency_injection/providers_register.dart';
import 'package:user_list/domain/providers/user_list_provider.dart';
import 'package:user_list/ui/pages/home/home_page.dart';

void main() {
  setUpAll(() {
    ProvidersRegister().regist();
  });
  testWidgets('Test user list', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider.value(
      value: Injector.appInstance.get<UserListProvider>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const HomePage(),
      ),
    ));
    await tester.pump();
    expect(find.text('chiro0'), findsOneWidget);
  });
}
