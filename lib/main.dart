import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trade_craft/core/helpers/constant.dart';
import 'package:trade_craft/core/helpers/extention.dart';
import 'package:trade_craft/core/helpers/shared_pref_helper.dart';
import 'package:trade_craft/core/routing/app_router.dart';
import 'package:trade_craft/features/service/data/models/service_detail_model.dart';
import 'package:trade_craft/trade_craft_app.dart';
import 'core/di/dependency_injection.dart';
void main() async{
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  await Hive.initFlutter();
  Hive.registerAdapter(ServiceDetailModelAdapter());
  await Hive.openBox<ServiceDetailModel>(kServiceDetailsBox);
  runApp(
    TradeCraftApp(appRouter: AppRouter())
  );
}

checkIfUserIsLoggedIn() async {
  String? token=await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if(token.isNullOrEmpty()){
    isLoggedIn = false;
  }else{
    isLoggedIn = true;
  }
}

