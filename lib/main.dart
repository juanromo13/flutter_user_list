import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';
import 'package:user_list/data/repositories/user_list/user_list_http_repository.dart';
import 'package:user_list/dependency_injection/providers_register.dart';
import 'package:user_list/ui/pages/home/home_page.dart';

import 'domain/providers/user_list_provider.dart';

void main() {
  ProvidersRegister().regist();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Injector.appInstance.get<UserListProvider>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const HomePage(),
      ),
    );
  }
}
