import 'package:flutter/material.dart';
import 'package:trade_craft/core/widgets/custom_button.dart';
import 'package:trade_craft/core/widgets/custom_text_field.dart';
import 'package:trade_craft/features/signup/ui/widgets/custom_checkbox.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:  Column(
        children: [
          const CustomTextField(
            hint: 'الاسم الكامل',
            icon: Icons.person_outline,
          ),
          const SizedBox(height: 16),
          const CustomTextField(
            hint: 'رقم الجوال',
            icon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          const CustomTextField(
            hint: 'ايميل المستخدم',
            icon: Icons.email_outlined,
          ),
          const SizedBox(height: 16),
          const CustomTextField(
            hint: 'كلمة المرور',
            icon: Icons.lock_outline,
          ),
          const SizedBox(height: 20),
          CustomCheckbox(
            text: 'الموافقة على الشروط والأحكام',
            value: _acceptTerms,
            onChanged: (value) {
              setState(() {
                _acceptTerms = value ?? false;
              });
            },
          ),
          const SizedBox(height: 8),
          CustomButton(
            text: 'إنشاء حساب',
            onPressed: () {
              if (_formKey.currentState!.validate() && _acceptTerms) {
                // Handle registration
              }
            },
          ),
        ],
      ),
    );
  }
}
