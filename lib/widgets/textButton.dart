import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  final String title;
  final Widget widget;
  TextButton({this.widget, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FlatButton(
        color: Colors.teal,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => this.widget));
        },
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
