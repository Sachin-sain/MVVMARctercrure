import 'package:create_projectusing_mvvm/data/repository/loginrepository/login_repository.dart';
import 'package:create_projectusing_mvvm/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LoginController extends GetxController {
  final _api = LoginRepository();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.text,
      'password': passwordController.text
    };
    _api.loginApi(data).then((value) {
loading.value=false;
Utils.snackBar('Login', 'Login Successfully');
    }).onError((error, stackTrace) {
      loading.value=false;
      Utils.snackBar('Login', 'Login Successfully');

      Utils.snackBar('Error', error.toString());
    });
  }
}

