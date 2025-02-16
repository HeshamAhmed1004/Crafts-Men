import 'package:flutter/material.dart';
import 'package:trade_craft/core/widgets/custom_button.dart';

import '../../../../core/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0,bottom: 16.0),
        child: Card(
          color: const Color(0xFF45404a),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  hint: 'ايميل المستخدم',
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  hint: 'كلمة المرور',
                  icon: Icons.lock_outline,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       // Handle registration
                //     }
                //   },
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.red,
                //     minimumSize: const Size(double.infinity, 50),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //   ),
                //   child: const Text(
                //     'تسجيل الدخول',
                //     style: TextStyle(
                //       fontSize: 18,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                CustomButton(
                  text: "تسجيل الدخول",
                  onPressed: () {},

                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'اضغط هنا',
                        style: TextStyle(
                          color: Colors.amber,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'اضغط هنا',
                        style: TextStyle(
                          color: Colors.amber,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const Text(
                      'إنشاء حساب جديد ؟',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}