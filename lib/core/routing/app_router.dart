
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_craft/core/di/dependency_injection.dart';
import 'package:trade_craft/core/routing/routes.dart';
import 'package:trade_craft/features/home/layout_screen.dart';
import 'package:trade_craft/features/login/logic/login_cubit.dart';
import 'package:trade_craft/features/my_order/ui/my_order_screen.dart';
import 'package:trade_craft/features/service/ui/sevice_screen.dart';
import 'package:trade_craft/features/service_maker/ui/service_maker_screen.dart';
import 'package:trade_craft/features/signup/logic/sign_up_cubit.dart';

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
          builder: (context) =>  BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen()),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) =>  const LayoutScreen(),
        );
      case Routes.serviceScreen:
        return MaterialPageRoute(
          builder: (context) =>   ServiceScreen(),
        );
        case Routes.myOrderScreen:
        return MaterialPageRoute(
          builder: (context) =>   const MyOrderScreen(),
        );
        case Routes.serviceMakerScreen:
        return MaterialPageRoute(
          builder: (context) =>   const ServiceMakerScreen(),
        );
        case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (context) =>   const LayoutScreen(),
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
