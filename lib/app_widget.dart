import 'package:flutter/material.dart';
import 'package:level_up_03/modules/get_started/get_started_page.dart';
import 'modules/create_account/create_account_page.dart';
import 'modules/login/login_page.dart';
import 'modules/reset_password/reset_password_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBC90),
      ),
      initialRoute: '/get-started',
      routes: {
        '/get-started': (context) => GetStartedPage(),
        '/login': (context) => LoginPage(),
        '/create-account': (context) => CreateAccountPage(),
        '/reset-password': (context) => ResetPasswordPage(),
      },
    );
  }
}
