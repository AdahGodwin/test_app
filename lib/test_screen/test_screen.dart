import 'package:flutter/material.dart';
import 'package:test_app/widgets/boxed_text_widget.dart';

import 'package:test_app/widgets/icon_text_widget.dart';
import 'package:test_app/widgets/progress_bar_widget.dart';
import 'package:test_app/widgets/text_list_tile_widget.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: media.size.height - media.padding.top,
              width: media.size.width > 850 ? 850 : media.size.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 58,
                  right: 24,
                  bottom: 24,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Text(
                          "Stats",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconAndText(
                          iconImg: Image.asset("assets/images/frame.png"),
                          text: "+7",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconAndText(
                          iconImg:
                              Image.asset("assets/images/awesome-brain.png"),
                          text: "32",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ProgressBar(
                          title: "Current Streak",
                          childWidget: Text(
                            "+7",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          badgeText: "10 days",
                        ),
                        ProgressBar(
                          title: "Memory Points",
                          childWidget: Column(
                            children: [
                              Image.asset("assets/images/Group.png"),
                              const Text(
                                "32",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          badgeText: "40 points",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: media.size.height * 0.3,
                      width: double.infinity,
                      child: const Center(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            BoxedText(number: "12", text: "Numbers Memorized"),
                            BoxedText(
                                number: "118", text: "Total numbers length"),
                            BoxedText(
                                number: "81", text: "Minutes spent on App"),
                            BoxedText(
                                number: "5.7", text: "Daily Average Minutes"),
                          ],
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "General",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromRGBO(241, 242, 244, 1),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextListTile(
                              leadingText: "Longest streak",
                              trailingText: "7 days"),
                          TextListTile(
                              leadingText: "Total completed days",
                              trailingText: "7 days"),
                          TextListTile(
                              leadingText: "Numbers recall log",
                              trailingText: "31"),
                          TextListTile(
                              leadingText: "Average numbers length",
                              trailingText: "9"),
                          TextListTile(
                              leadingText: "Contacts memorized",
                              trailingText: "8"),
                          TextListTile(
                              leadingText: "Constants memorized",
                              trailingText: "3"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
