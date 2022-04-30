import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extensions.dart';
import 'package:flutter/material.dart';

class LoginRegisterButton extends StatefulWidget {

  const LoginRegisterButton({ Key? key }) : super(key: key);

  @override
  _LoginRegisterButtonState createState() => _LoginRegisterButtonState();
}

class _LoginRegisterButtonState extends State<LoginRegisterButton> {

   @override
   Widget build(BuildContext context) {
       return Wrap(
         alignment: WrapAlignment.center,
         spacing: 10,
         runSpacing: 10,
         children: [
           Container(
             width: 163.w,
             height: 40.h,
             color: Colors.blue,
           ),
           Container(
             width: 163.w,
             height: 40.h,
             color: Colors.orange,
           ),
           Container(
             width: 163.w,
             height: 40.h,
             color: Colors.green,
           ),
         ],

       );
  }
}