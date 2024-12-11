import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          // const Text(
          //   'مقاولون',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 32,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/logo2.png',
            height: 120,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}