import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ComputeWith10SecondDelay extends StatelessWidget {
  static Future<String> runningFunction(String str) async {
    int sum = 0;
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print(i);
      sum += i;
    }
    return "Sum is : " + sum.toString() + str;
  }

  pauseFunction() async {
    print(await compute(runningFunction,
        " This is an argument")); //storing data of copute result
  }

  @override
  Widget build(BuildContext context) {
    pauseFunction();

    return Material(
      child: Center(
        child: Center(
          child: Text(
            "Wow , it saved my 10 seconds : check console for response",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
