import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Ravana",
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 1000),
              isRepeatingAnimation: true,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  "Hello",
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                RotateAnimatedText(
                  "Beautiful",
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                RotateAnimatedText(
                  "World",
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 1000),
              isRepeatingAnimation: true,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText("Hello World!!",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                WavyAnimatedText("Hello World!!",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
