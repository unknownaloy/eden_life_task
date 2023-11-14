import 'package:eden_life_task/feature/login/presentation/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff2ec),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Eden Life",
                textAlign: TextAlign.center,
                style: GoogleFonts.dancingScript(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF2d2220),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              const LoginButton(
                trailingIcon: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.black,
                ),
                buttonText: "Sign in Google",
              ),
              const SizedBox(
                height: 24,
              ),
              const LoginButton(
                trailingIcon: FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                ),
                buttonText: "Sign in GitHub",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
