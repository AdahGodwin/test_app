import 'package:flutter/material.dart';

class TextListTile extends StatelessWidget {
  final String leadingText;
  final String trailingText;

  const TextListTile(
      {super.key, required this.leadingText, required this.trailingText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leadingText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          trailingText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
