import 'package:flutter/material.dart';

class FP1Screen extends StatefulWidget {
  const FP1Screen({super.key});

  @override
  State<FP1Screen> createState() => _FP1ScreenState();
}

class _FP1ScreenState extends State<FP1Screen> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 72,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FloatingActionButton.small(
              elevation: 0,
              shape: const CircleBorder(),
              onPressed: () {},
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
              "Enter your email",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
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
              obscureText: passwordVisible,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                // helperText:
                // "The email address you provided is not associated with your account",
                // helperStyle: TextStyle(
                // color: Colors.red[900],
                // fontSize: 12,
                // ),
                hintText: "Email address",
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
                  'Sent email',
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
      ),
    );
  }
}
