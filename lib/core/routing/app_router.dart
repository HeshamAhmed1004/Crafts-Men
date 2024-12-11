
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_craft/core/di/dependency_injection.dart';
import 'package:trade_craft/core/routing/routes.dart';
import 'package:trade_craft/features/ex/login_screen.dart';

import '../../features/ex/home/home_screen.dart';
import '../../features/ex/login/login_screen.dart';
import '../../features/ex/signup_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
    //on boarding
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const OnBoardingScreen(),
      //   );
    //home screen
      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const HomeScreen(),
      //   );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
        case Routes.rScreen:
        return MaterialPageRoute(
          builder: (context) =>  const RegistrationScreen(),
        );
      case Routes.hScreen:
        return MaterialPageRoute(
          builder: (context) =>  const HomeScreen(),
        );
        case Routes.lScreen:
        return MaterialPageRoute(
          builder: (context) =>  const LogIInScreen(),
        );
      // case Routes.signupScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => BlocProvider(
      //         create: (context) => getIt<SignupCubit>(),
      //         child: const SignupScreen()),
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No page defined'),
            ),
          ),
        );
    }
  }
}
