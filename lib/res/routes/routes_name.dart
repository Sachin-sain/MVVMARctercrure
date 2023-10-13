import 'package:create_projectusing_mvvm/res/routes/routes.dart';
import 'package:create_projectusing_mvvm/view/SplashScreen.dart';
import 'package:create_projectusing_mvvm/view/login/login_view.dart';
import 'package:get/get.dart';

class AppRoutes{

  static appRoutes()=>[
    GetPage(
        name: Routes.splashScreen,
        page:()=> SplashScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: Routes.loginView,
      page:()=> LoginView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    )

  ];


}