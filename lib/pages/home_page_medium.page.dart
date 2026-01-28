import 'package:flutter/material.dart';
import 'package:tela_inicial_medium/widgets/circle_social_button.widget.dart';
import 'package:tela_inicial_medium/widgets/social_button.widget.dart';
import 'package:tela_inicial_medium/widgets/terms_and_privacy.widget.dart';

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
              Image.asset(
                "assets/images/medium.png",
                width: 50,
                height: 50,
                key: ValueKey("imageMedium"),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Join Medium.",
                    key: ValueKey("textTitle"),
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
                key: ValueKey("signupGoogle"),
              ),
              SizedBox(height: 15),
              const SocialButton(
                pathImage: "assets/images/email.png",
                text: "Sign up with Email",
                key: ValueKey("signupEmail"),
              ),
              SizedBox(height: 30),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      key: ValueKey("dividerLeft"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or, sign up with",
                      selectionColor: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      key: ValueKey("dividerRight"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              CircleSocialButton(),
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
                  child: TermsAndPrivacy(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
