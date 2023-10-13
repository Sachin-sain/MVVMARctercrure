import 'package:create_projectusing_mvvm/data/app_exceptions.dart';
import 'package:create_projectusing_mvvm/res/componenets/InternetException_widget.dart';
import 'package:create_projectusing_mvvm/res/componenets/roundedButton.dart';
import 'package:create_projectusing_mvvm/utils/Utils.dart';
import 'package:create_projectusing_mvvm/viewmodel/services/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen=SplashServices();
  @override
  void initState() {
    super.initState();
    splashScreen.isLogin();
  }
  Widget build(BuildContext context) {
    // return InterNetExceptionWidget();
    return Scaffold(
      backgroundColor: Colors.teal,
      // appBar: AppBar(
      //   title: Text('MVVM'),
      // ),
      // body: Column(
      //   children: [
      //     RoundedButton(title: 'data', onPress: () {
      //
      //     },)
      //   ],
      // ),
      body:Center(
        child: Text('Welcome back'.tr,textAlign: TextAlign.center,),
      )
    );
  }
}
