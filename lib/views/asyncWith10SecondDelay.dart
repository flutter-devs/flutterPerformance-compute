import 'dart:io';

import 'package:flutter/material.dart';

class AsyncWith10SecondDelay extends StatelessWidget {
  runningFunction() {
    int sum = 0;
    for (int i = 1; i <= 10; i++) {
      sleep(Duration(seconds: 1));
      print(i);
      sum += i;
    }
    return "total sum is $sum";
  }

  pauseFunction() async {
    //pause function is async
    print(runningFunction());
  }

  @override
  Widget build(BuildContext context) {
    pauseFunction();
    return Material(
      child: Center(
        child: Text(
          "Tnx again for waiting 10 seconds : check console for response",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
