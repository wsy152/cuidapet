import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extensions.dart';
import 'package:cuidapet_mobile/app/modules/auth/login/widget/login_form.dart';
import 'package:cuidapet_mobile/app/modules/auth/login/widget/login_register_button.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/widgets/cuidapet_default_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(top:  1.statusBarHeight + 30,left: 20,right: 20),
        width: 1.sw,
        height: 1.sh,
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 150.w,
              fit: BoxFit.fill,
            ),
            const LoginForm(),
             CuidapetDefaultButton(label: 'Entrar', onPressed: (){}),
           const LoginRegisterButton()
          ],
        ),
      )),
    );
  }
}

