import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.trailingIcon,
    required this.buttonText,
    this.isLoading = false,
    required this.onPressed,
  });

  final Widget trailingIcon;
  final String buttonText;
  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color(0xFFe8d8c9),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 16,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 32,
            child: trailingIcon,
          ),
          Align(
            alignment: Alignment.center,
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator.adaptive(
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
