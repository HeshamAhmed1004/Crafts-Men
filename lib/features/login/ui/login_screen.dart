
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_craft/features/login/ui/widgets/email_and_password.dart';
import 'package:trade_craft/features/login/ui/widgets/login_bloc_listener.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/terms_and_conditions_text.dart';
import 'widgets/dont_have_account_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Welcome Back", style: TextStyles.font24BlueBold),
                // verticalSpacing(8),
                // Text(
                //   "We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.",
                //   style: TextStyles.font14GrayRegular,
                // ),
                // verticalSpacing(36),
                // Column(
                //   children: [
                //     const EmailAndPassword(),
                //     Align(
                //       alignment: AlignmentDirectional.centerEnd,
                //       child: Text(
                //         'Forgot Password?',
                //         style: TextStyles.font13BlueRegular,
                //       ),
                //     ),
                //     verticalSpacing(40),
                //     AppTextButton(
                //       textStyle: TextStyles.font16WhiteSemiBold,
                //       textButton: "Login",
                //       onPressed: () {
                //         //validateThenDoLogin(context);
                //       },
                //     ),
                //     verticalSpacing(16),
                //     const TermsAndConditionsText(),
                //     verticalSpacing(60),
                //     const DontHaveAccountText(),
                //    // const LoginBlocListener(),
                //   ],
                // ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void validateThenDoLogin(BuildContext context) {
//   if (context.read<LoginCubit>().formKey.currentState!.validate()) {
//     context.read<LoginCubit>().emitLoginStates();
//   }
// }
