import 'package:flutter/material.dart';
import 'package:level_up_03/shared/validators/form_validator.dart';
import 'package:level_up_03/shared/widgets/button/button_widget.dart';
import 'package:level_up_03/shared/widgets/input_text/input_text_widget.dart';
import 'package:level_up_03/shared/widgets/text/text_widget.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
                Image(
                  image: AssetImage('assets/images/reset_password_image.png'),
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextWidget(
                        text: 'Need help with your password?',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3EBC90),
                      ),
                      TextWidget(
                        text:
                            'Request a reset link by typing your registered email below.',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF262626),
                      ),
                      InputTextWidget(
                        label: 'Email',
                        hintText: 'Type your registered email',
                        validator: (value) =>
                            Validators().validateEmailLogin(value!),
                        onChanged: (value) {},
                        obscureText: false,
                      ),
                      ButtonWidget(
                        text: 'Reset Password',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Email sent')));
                            Navigator.popUntil(
                                context, ModalRoute.withName('/login'));
                          }
                        },
                        color: Color(0xFF3EBC90),
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
