import 'package:flutter/material.dart';
import 'package:tela_inicial_medium/widgets/social_button.widget.dart';

class HomePageMedium extends StatelessWidget {
  const HomePageMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/medium.png", width: 50, height: 50),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Join Medium.",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SocialButton(
                pathImage: "assets/images/google.png",
                text: "Sign up with Google",
              ),
              SizedBox(height: 15),
              const SocialButton(
                pathImage: "assets/images/email.png",
                text: "Sign up with Email",
              ),
              SizedBox(height: 30),
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or, sign up with",
                      selectionColor: Colors.grey,
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
              SizedBox(height: 30),
              InkWell(
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
                  child: Image.asset("assets/images/facebook.png", width: 30),
                ),
              ),
              SizedBox(height: 30),
              Align(
                child: RichText(
                  
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Align(
                  alignment: AlignmentGeometry.bottomCenter,
                  child: RichText(
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
