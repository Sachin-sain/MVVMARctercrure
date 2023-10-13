import 'dart:core';

import 'package:create_projectusing_mvvm/res/colors/colors.dart';
import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  const RoundedButton({
    super.key,
    this.buttonColor=AppColor.blackColor,
    this.textColor=AppColor.whiteColor,
    required this.title,
    required this.onPress,
     this.height=60,
    this.width=50,
    this.loading=false,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: loading ?Center(child: CircularProgressIndicator(),):Center(child: Text(title,style: TextStyle(color: AppColor.blackColor)),)
      ),
    );
  }
}
