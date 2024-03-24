import 'package:flutter/material.dart';

class BoxedText extends StatelessWidget {
  final String number;
  final String text;

  const BoxedText({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 160,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(241, 242, 244, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromRGBO(153, 153, 153, 1),
            ),
          ),
        ],
      ),
    );
  }
}
