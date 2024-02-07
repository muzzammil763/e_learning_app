import 'package:flutter/material.dart';

class FP2Screen extends StatelessWidget {
  const FP2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 96,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Check your email',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'We’ve sent a password recover instruction to your email',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              child: Image.asset(
                'assets/images/mg.png',
                fit: BoxFit.cover,
                height: 300,
              ),
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
                  'Open email app',
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
                  'Will do it later',
                  style: TextStyle(
                    color: Colors.blueAccent[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Didn’t get any email? Check your spam folder or try again with a valid email.',
              style: TextStyle(
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
