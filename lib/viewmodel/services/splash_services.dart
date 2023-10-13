import 'dart:async';

import 'package:create_projectusing_mvvm/res/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../res/routes/routes.dart';

class SplashServices{
  void isLogin(){
    Timer(const Duration(seconds: 50),
    ()=>Get.toNamed(Routes.loginView));


  }
}