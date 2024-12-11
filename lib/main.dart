import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_craft/core/routing/app_router.dart';
import 'package:trade_craft/trade_craft_app.dart';

import 'core/di/dependency_injection.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(
    TradeCraftApp(appRouter: AppRouter())
  );
}

