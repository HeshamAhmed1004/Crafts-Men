// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:trade_craft/features/bolt/phone_input_field.dart';
//
// import 'custom_button_2.dart';
//
//
// class LogIInScreen extends StatefulWidget {
//   const LogIInScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LogIInScreen> createState() => _LogIInScreenState();
// }
//
// class _LogIInScreenState extends State<LogIInScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _phoneController = TextEditingController();
//   bool _isLoading = false;
//
//   void _handleLogin() {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//       // TODO: Implement phone authentication logic
//       // This is where you would integrate with your authentication service
//       Future.delayed(const Duration(seconds: 2), () {
//         setState(() {
//           _isLoading = false;
//         });
//       });
//     }
//   }
//
//   @override
//   void dispose() {
//     _phoneController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//
//                   Image.asset(
//                     'assets/images/logo2.png',
//                     height: 120,
//                     fit: BoxFit.scaleDown,
//                     width: double.infinity,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0, right: 16.0,bottom: 16.0),
//                     child: Card(
//                       elevation: 8,
//                       shadowColor: Colors.black,
//                       // color: Color(0xFF1B5E20),
//                       color: Color(0xFF2D2E2D),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: [
//                             const SizedBox(height: 20),
//                             Text(
//                               'مرحبًا بعودتك',
//                               style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                                // fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             const SizedBox(height: 12),
//                             Text(
//                               'قم بتسجيل الدخول باستخدام رقم هاتفك',
//                               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                                 color: Colors.white,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             const SizedBox(height: 40),
//                             PhoneInputField(
//                               controller: _phoneController,
//                               onChanged: (value) {
//                                 setState(() {});
//                               },
//                             ),
//                             const SizedBox(height: 24),
//                             CustomButton(
//                               onPressed: _phoneController.text.length >= 11 ? _handleLogin : null,
//                               isLoading: _isLoading,
//                               text: 'تسجيل الدخول',
//                             ),
//                             const SizedBox(height: 24),
//                             RichText(
//                               textAlign: TextAlign.center,
//                               text: TextSpan(
//                                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                                   color: Colors.grey[600],
//                                 ),
//                                 children: [
//                                   const TextSpan(text: 'By continuing, you agree to our '),
//                                   TextSpan(
//                                     text: 'Terms',
//                                     style: TextStyle(color: Theme.of(context).primaryColor),
//                                   ),
//                                   const TextSpan(text: ' and '),
//                                   TextSpan(
//                                     text: 'Privacy Policy',
//                                     style: TextStyle(color: Theme.of(context).primaryColor),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }