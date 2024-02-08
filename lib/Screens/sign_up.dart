import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Welcome back!\nSign up to continue!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 64,
              ),
              Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0XFFF3F4F6),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/google.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const Text(
                      'Log in with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0XFFF3F4F6),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/facebook.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Or',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueAccent[700],
                ),
                child: const Center(
                  child: Text(
                    'Sign up with Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "By signing up you are agreed with our\n friendly terms and condition.",
                style: TextStyle(
                  color: Colors.black54,
                  height: 1.8,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.blueAccent[700],
                    fontWeight: FontWeight.bold,
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
