import 'package:eden_life_task/common/unions/request_state/request_state.dart';
import 'package:eden_life_task/feature/login/presentation/components/login_button.dart';
import 'package:eden_life_task/feature/login/presentation/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (_, model, __) {
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
                      color: const Color(0xFF0c4c3b),
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  LoginButton(
                    trailingIcon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.black,
                    ),
                    buttonText: "Sign in Google",
                    isLoading: model.googleRequestState ==
                        const RequestState.loading(),
                    onPressed: model.isLoading ? () {} : model.loginWithGoogle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  LoginButton(
                    trailingIcon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                    buttonText: "Sign in GitHub",
                    isLoading: model.githubRequestState ==
                        const RequestState.loading(),
                    onPressed: model.isLoading ? () {} : model.loginWithGitHub,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
