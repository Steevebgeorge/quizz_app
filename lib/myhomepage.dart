import 'package:flutter/material.dart';

// 1st sreen to occupy scaffold settings
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.getStarted, {super.key});
  final void Function() getStarted;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo/logo.png",
            color: Colors.black,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
            onPressed: getStarted,
            child: const Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
