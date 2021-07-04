import 'package:flutter/material.dart';
import 'package:level_up_03/shared/widgets/button/button_widget.dart';
import 'package:level_up_03/shared/widgets/text/text_widget.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
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
                  image: AssetImage('assets/images/get_started_image.png'),
                  width: 200,
                  fit: BoxFit.cover,
                ),
                TextWidget(
                  text: 'Get things done with MyNotes!',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3EBC90),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Text(
                    'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. ',
                    textAlign: TextAlign.center,
                  ),
                ),
                ButtonWidget(
                  text: 'Get Started',
                  onPressed: () {
                    Navigator.restorablePushReplacementNamed(context, '/login');
                  },
                  color: Color(0xFF3EBC90),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
