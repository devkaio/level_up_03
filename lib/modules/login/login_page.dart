import 'package:flutter/material.dart';
import 'package:level_up_03/shared/validators/form_validator.dart';
import 'package:level_up_03/shared/widgets/button/button_widget.dart';
import 'package:level_up_03/shared/widgets/button/text_button_widget.dart';
import 'package:level_up_03/shared/widgets/input_text/input_text_widget.dart';
import 'package:level_up_03/shared/widgets/text/text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/login_image.png'),
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      TextWidget(
                        text: 'Welcome back!',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3EBC90),
                      ),
                      InputTextWidget(
                        label: 'E-mail',
                        hintText: 'Type your e-mail',
                        validator: (value) =>
                            Validators().validateEmailLogin(value!),
                        onChanged: (value) {},
                        obscureText: false,
                      ),
                      InputTextWidget(
                        label: 'Password',
                        hintText: 'Type your password',
                        validator: (value) =>
                            Validators().validatePasswordLogin(value!),
                        onChanged: (value) {},
                        obscureText: true,
                      ),
                      TextButtonWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, '/reset-password');
                        },
                        text: 'Forgot Password',
                      ),
                      ButtonWidget(
                        text: 'Sign in',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Connecting...')));
                          }
                        },
                        color: Color(0xFF3EBC90),
                      ),
                      TextButtonWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, '/create-account');
                        },
                        text: 'Don\'t have an account yet? Sign Up!',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
