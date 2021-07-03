import 'package:flutter/material.dart';
import 'package:level_up_03/modules/get_started/get_started_page.dart';

import 'modules/create_account/create_account_page.dart';
import 'modules/login/login_page.dart';
import 'modules/reset_password/reset_password_page.dart';
import 'modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/login': (context) => LoginPage(),
        '/create-account': (context) => CreateAccountPage(),
        '/reset-password': (context) => ResetPasswordPage(),
      },
    );
  }
}