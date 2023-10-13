import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../res/colors/colors.dart';

class Utils{
  static void fieldFocusChange(BuildContext context,FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(
      backgroundColor: AppColor.blackColor,
        msg: message,
      gravity: ToastGravity.BOTTOM

    );
  }
  static toastMessagecenter(String message){
    Fluttertoast.showToast(
        backgroundColor: AppColor.blackColor,
        msg: message,
        gravity: ToastGravity.CENTER

    );
  }

  static snackBar(String title,String message){
   Get.snackbar(
       title,
       message,

   );
  }

}

///how to used
/// Utils.toastMessage('sachin');