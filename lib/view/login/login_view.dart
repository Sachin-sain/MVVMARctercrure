import 'package:create_projectusing_mvvm/res/componenets/roundedButton.dart';
import 'package:create_projectusing_mvvm/utils/Utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../viewmodel/controller/login_view_model.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey=GlobalKey<FormState>();

  LoginController controller=Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Form(
            key:_formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.snackBar('Email', 'Enter Email');
                      }
                    },
                    onFieldSubmitted: (value){
                      Utils.fieldFocusChange(context, controller.emailFocusNode, controller.passwordFocusNode);

                    },
                    controller: controller.emailController,
                    focusNode: controller.emailFocusNode,
                    decoration: InputDecoration(
                      hintText: 'Enter Text',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 30,
                  child: TextFormField(
                   validator: (value){
                     if(value!.isEmpty){
                       Utils.snackBar('Password', 'Enter Password');
                     }

                   },
                    controller: controller.passwordController,
                    focusNode: controller.passwordFocusNode,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                    ),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
         
        RoundedButton(
          width: 200,
            loading: controller.loading.value,
            title: 'Login', onPress: (){
            if(_formKey.currentState!.validate()){
            controller.loginApi();
            }

        })
        ],
      ),
    );
  }
}
