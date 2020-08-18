import 'package:blog/views/with10SecondDelay.dart';
import 'package:blog/widgets/textButton.dart';
import 'package:flutter/material.dart';

import 'asyncWith10SecondDelay.dart';
import 'computeWith10SecondDelay.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            title: "With 10 second delay",
            widget: With10SecondDelay(),
          ),
          TextButton(
            title: "async with 10 second delay",
            widget: AsyncWith10SecondDelay(),
          ),
          TextButton(
            title: "compute with 10 second delay",
            widget: ComputeWith10SecondDelay(),
          ),
        ],
      ),
    );
  }
}
