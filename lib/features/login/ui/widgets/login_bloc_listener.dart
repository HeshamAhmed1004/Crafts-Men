
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_craft/core/helpers/extention.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManger.mainBlue,
                ),
              ),
            );
          },
        );
      },
      listenWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.error,
            color: Colors.red,
            size: 32,
          ),
          content: Text(
            error,
            style: TextStyles.font15DarkBlueMedium,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Go Item',
                  style: TextStyles.font14BlueSemiBold,
                )),
          ],
        );
      },
    );
  }
}
