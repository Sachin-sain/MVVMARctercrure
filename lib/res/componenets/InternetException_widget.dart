import 'package:create_projectusing_mvvm/res/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InterNetExceptionWidget extends StatefulWidget {
  const InterNetExceptionWidget({super.key});

  @override
  State<InterNetExceptionWidget> createState() => _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Icon(Icons.cloud_off,color: AppColor.blackColor,size: 50,),
          Padding(
              padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text('Internet Exception',)
            ),
          ),
          SizedBox(height: 10),
          Text('Retry')

        ],
      ),
    );
  }
}
