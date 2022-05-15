import 'package:cuidapet_mobile/app/core/ui/cuidapeticons_icons.dart';
import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extensions.dart';
import 'package:cuidapet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/widgets/cuidapet_default_button.dart';
import '../../../core/ui/widgets/cuidapet_text_form_field.dart';
import '../../../core/ui/widgets/rounded_button_with_icon.dart';

part '../login/widget/login_form.dart';
part '../login/widget/login_register_button.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 162.w,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
              const _LoginForm(),
              const _OrSeparator(),
              const SizedBox(
                height: 8,
              ),
              const _LoginRegisterButton()
            ],
          ),
        ),
      ),
    );
  }
}






// SingleChildScrollView(
//           child: Container(
//         padding: EdgeInsets.only(top:  1.statusBarHeight + 30,left: 20,right: 20),
//         width: 1.sw,
//         height: 1.sh,
//         child: Column(
//           children: [
//             Image.asset(
//               'assets/images/logo.png',
//               width: 150.w,
//               fit: BoxFit.fill,
//             ),
//             const LoginForm(),
//              CuidapetDefaultButton(label: 'Entrar', onPressed: (){}),
//            const LoginRegisterButton()
//           ],
//         ),
//       ))

