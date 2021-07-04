import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final text;
  final onPressed;
  final color;

  const ButtonWidget({Key? key, this.text, this.onPressed, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        primary: color,
        elevation: 0,
        minimumSize: Size(128, 48),
      ),
    );
  }
}
