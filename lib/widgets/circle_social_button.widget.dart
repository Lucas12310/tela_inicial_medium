import 'package:flutter/material.dart';

class CircleSocialButton extends StatelessWidget {
  const CircleSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: const CircleBorder(),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: Image.asset(
          "assets/images/facebook.png",
          width: 30,
          key: ValueKey("buttonFacebook"),
        ),
      ),
    );
  }
}
