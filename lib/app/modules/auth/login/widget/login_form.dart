import 'package:cuidapet_mobile/app/core/ui/cuidapeticons_icons.dart';
import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extensions.dart';
import 'package:cuidapet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/widgets/cuidapet_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final ctrlSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        CuidapetTextFormField(label: 'Login'),
        SizedBox(
          height: 20.h,
        ),
        CuidapetTextFormField(
          label: 'Senha',
          obscureText: true,
          controller: ctrlSenha,
          validator: (String? value){
            if(value == null || value.isEmpty){
              return 'Valor obrigatório';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 58,
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Entrar'))),
               const Icon(Cuidapeticons.facebook,color: Colors.blue, ),
               const Icon(Cuidapeticons.google,color: Colors.red, ),
               const Icon(Cuidapeticons.apple,color: Colors.cyan, ),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: context.primaryColor,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'OU',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: context.primaryColor),
              ),
            ),
            Expanded(
              child: Divider(
                color: context.primaryColor,
                thickness: 1,
              ),
            )
          ],
        )
      ],
    );
  }
}
