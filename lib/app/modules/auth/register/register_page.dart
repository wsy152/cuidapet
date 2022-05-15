import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extensions.dart';
import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/widgets/cuidapet_default_button.dart';
part '../register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {

  const RegisterPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Cadastrar Usuário'),elevation: 0),
           body: SingleChildScrollView(
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
              SizedBox(height: 20.h),
              const _RegisterForm(),
               ],

             ),
           ),
       );
  }
}