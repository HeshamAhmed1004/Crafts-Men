import 'package:flutter/material.dart';

import 'constants.dart';
import 'login_form.dart';
import 'logo_section.dart';


class LogIInScreen extends StatelessWidget {
  const LogIInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  ),
                  child: Column(
                    children: const [
                      LogoSection(),
                      LoginForm(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}