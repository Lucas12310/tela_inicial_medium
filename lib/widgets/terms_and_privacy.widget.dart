import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        text: "By signing up, you agree to our ",
        style: TextStyle(color: Colors.grey),
        children: [
          TextSpan(
            text: "Terms of Service ",
            style: TextStyle(color: Colors.green),
            children: [
              TextSpan(
                text: "and acknowledge that our ",
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: "Privacy Policy ",
                    style: TextStyle(color: Colors.green),
                    children: [
                      TextSpan(
                        text: "applies to you.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
