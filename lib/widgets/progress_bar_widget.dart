import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProgressBar extends StatelessWidget {
  final String title;
  final Widget childWidget;
  final String badgeText;
  const ProgressBar(
      {super.key,
      required this.title,
      required this.childWidget,
      required this.badgeText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              height: 84,
              width: 84,
              child: Transform.rotate(
                angle: -math.pi,
                child: const CircularProgressIndicator(
                  value: 0.75,
                  backgroundColor: Colors.grey,
                  color: Colors.black,
                ),
              ),
            ),
            childWidget
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Next badge: $badgeText",
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
