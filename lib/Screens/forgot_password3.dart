import 'package:flutter/material.dart';

class FP3Screen extends StatefulWidget {
  const FP3Screen({super.key});

  @override
  State<FP3Screen> createState() => _FP3ScreenState();
}

class _FP3ScreenState extends State<FP3Screen> {
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
              "Reset your password",
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
              obscureText: passwordVisible,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter new password",
                hintStyle: const TextStyle(
                  color: Colors.black38,
                  fontSize: 15,
                ),
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
                hintText: "Confirm new password",
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
              height: 48,
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
                  'Reset',
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
