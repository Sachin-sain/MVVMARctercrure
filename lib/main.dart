import 'package:create_projectusing_mvvm/res/getx_localization/languages.dart';
import 'package:create_projectusing_mvvm/res/routes/routes_name.dart';
import 'package:create_projectusing_mvvm/utils/Utils.dart';
import 'package:create_projectusing_mvvm/view/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // translations: Languages(),
      // locale: Locale('hi','IN'),
      // fallbackLocale: Locale('hi','IN'),
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}


