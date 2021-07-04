import 'package:flutter/material.dart';
import 'package:level_up_03/shared/validators/form_validator.dart';
import 'package:level_up_03/shared/widgets/button/button_widget.dart';
import 'package:level_up_03/shared/widgets/button/text_button_widget.dart';
import 'package:level_up_03/shared/widgets/input_text/input_text_widget.dart';
import 'package:level_up_03/shared/widgets/text/text_widget.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
                  image: AssetImage('assets/images/create_account_image.png'),
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    children: [
                      TextWidget(
                        text: 'Ready to save everything?',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3EBC90),
                      ),
                      TextWidget(
                        text:
                            'Create your free account and start creating unlimited notes!',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF262626),
                      ),
                      InputTextWidget(
                        label: 'Full name',
                        hintText: 'Type your full name',
                        validator: (value) => Validators().validateName(value!),
                        onChanged: (value) {},
                        obscureText: false,
                      ),
                      InputTextWidget(
                        label: 'Email',
                        hintText: 'Type your email',
                        validator: (value) =>
                            Validators().validateEmail(value!),
                        onChanged: (value) {},
                        obscureText: false,
                      ),
                      InputTextWidget(
                        label: 'Password',
                        hintText: 'Type your password',
                        controller: _passwordController,
                        validator: (value) =>
                            Validators().validatePassword(value),
                        onChanged: (value) {},
                        obscureText: true,
                      ),
                      InputTextWidget(
                        label: 'Confirm password',
                        hintText: 'Confirm your password',
                        controller: _confirmPasswordController,
                        validator: (value) => Validators()
                            .validatePasswordConfirmation(
                                value, _passwordController.value.text),
                        onChanged: (value) {},
                        obscureText: true,
                      ),
                      ButtonWidget(
                        text: 'Register',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text('Account created. Please sign in.')));
                            Navigator.popUntil(
                                context, ModalRoute.withName('/login'));
                          }
                        },
                        color: Color(0xFF3EBC90),
                      ),
                      TextButtonWidget(
                        onPressed: () {
                          Navigator.popUntil(
                              context, ModalRoute.withName('/login'));
                        },
                        text: 'Already have an account? Sign In!',
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
