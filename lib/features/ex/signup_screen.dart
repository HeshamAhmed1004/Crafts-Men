import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';
import 'custom_checkbox.dart';
import 'custom_dropdown.dart';
import 'custom_text_field.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo2.png',
                    height: 120,
                    fit: BoxFit.scaleDown,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0,bottom: 16.0),
                    child: Card(
                      elevation: 8,
                      shadowColor: Colors.black,
                     // color: Color(0xFF1B5E20),
                      color: Color(0xFF45404a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(height: 8),
                            const Text(
                              'إنشاء حساب',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            CustomDropdown(
                              items: const ['حساب شخصي', 'حساب تجاري'],
                              hint: 'نوع الحساب',
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              hint: 'الاسم',
                              icon: Icons.person_outline,
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              hint: 'مكان الإقامة (المدينة)',
                              icon: Icons.location_on_outlined,
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              hint: 'رقم الجوال',
                              icon: Icons.phone_outlined,
                              keyboardType: TextInputType.phone,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomDropdown(
                                    width: 10,
                                    items: const ['سباك فلاتر', 'حساب تجاري'],
                                    hint: 'إضافة خدمات ',
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}