
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_craft/core/di/dependency_injection.dart';
import 'package:trade_craft/core/routing/routes.dart';
import 'package:trade_craft/features/home/home_screen.dart';
import 'package:trade_craft/features/login/logic/login_cubit.dart';
import 'package:trade_craft/features/my_order/ui/my_order_screen.dart';
import 'package:trade_craft/features/service/ui/sevice_screen.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/signup/ui/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    //final arguments = settings.arguments;
    switch (settings.name) {
    //on boarding
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const OnBoardingScreen(),
      //   );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );


        case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (context) =>  const SignupScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) =>  const HomeScreen(),
        );
      case Routes.serviceScreen:
        return MaterialPageRoute(
          builder: (context) =>   ServiceScreen(),
        );case Routes.myOrderScreen:
        return MaterialPageRoute(
          builder: (context) =>   const MyOrderScreen(),
        );

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
