import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final Widget iconImg;
  final String text;
  const IconAndText(
      {super.key, icon, required this.iconImg, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          iconImg,
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
