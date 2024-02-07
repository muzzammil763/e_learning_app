import 'package:flutter/material.dart';

class SignupformScreen extends StatefulWidget {
  const SignupformScreen({super.key});

  @override
  State<SignupformScreen> createState() => _SignupformScreenState();
}

class _SignupformScreenState extends State<SignupformScreen> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 48,
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FloatingActionButton.small(
                  elevation: 0,
                  shape: const CircleBorder(),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: Colors.blueAccent[700],
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Enter your details",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 48,
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
                    helperText: "Please enter your username",
                    // hintText: 'Username',
                    // hintStyle: const TextStyle(
                    //   color: Colors.black38,
                    //   fontSize: 15,
                    // ),
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    // hintText: 'Email address',
                    // hintStyle: const TextStyle(
                    //   color: Colors.black38,
                    //   fontSize: 15,
                    // ),
                    helperText: "Please enter a valid email address",
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
                    helperText: "Must contains 8 characters",
                    // hintText: "Password",
                    // hintStyle: const TextStyle(
                    //   color: Colors.black38,
                    //   fontSize: 15,
                    // ),
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
                    helperText: "Both passwords must match",
                    // hintText: "Confirm password",
                    // hintStyle: const TextStyle(
                    //   color: Colors.black38,
                    //   fontSize: 15,
                    // ),
                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     passwordVisible
                    //         ? Icons.visibility_outlined
                    //         : Icons.visibility_off_outlined,
                    //     size: 25,
                    //   ),
                    //   onPressed: () {
                    //     setState(
                    //       () {
                    //         passwordVisible = !passwordVisible;
                    //       },
                    //     );
                    //   },
                    // ),
                    filled: true,
                    fillColor: const Color(0XFFF3F4F6),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(
                  height: 96,
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
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
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
    );
  }
}
