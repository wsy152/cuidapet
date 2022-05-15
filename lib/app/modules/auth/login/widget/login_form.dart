part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
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
  
               RoundedButtonWithIcon(onTap: (){},color: Colors.blue,width: 200,icon: Cuidapeticons.facebook,label: 'Facebook'),
               RoundedButtonWithIcon(onTap: (){},color: Colors.black,width: 200,icon: Cuidapeticons.apple,label: 'Apple'),
               RoundedButtonWithIcon(onTap: (){},color: Colors.red,width: 200,icon: Cuidapeticons.google,label: 'Google'),
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
