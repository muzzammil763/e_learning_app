import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool passwordVisible = false;
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
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Welcome back!\nSign in to continue!",
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
                  TextField(
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Username',
                      hintStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      ),
                      filled: true,
                      fillColor: const Color(0XFFF3F4F6),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 25,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      filled: true,
                      fillColor: const Color(0XFFF3F4F6),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 64,
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
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
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
                    child: Center(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.blueAccent[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
