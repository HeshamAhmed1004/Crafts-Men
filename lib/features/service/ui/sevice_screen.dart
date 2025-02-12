import 'package:flutter/material.dart';

import 'widgets/problem_description_text_filed.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          color: const Color(0xFF45404a),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: [
                ProblemDescriptionTextField(
                  maxLines: 5,
                  hint: "تفاصيل المشكلة",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
