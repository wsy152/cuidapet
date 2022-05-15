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
        SizedBox(height: 20.h),
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
          height: 20 ),
          CuidapetDefaultButton(label: 'Entrar', onPressed: (){}),
        
      ],
    );
  }
}


class _OrSeparator extends StatelessWidget {

  const _OrSeparator({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Row(
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
                    fontSize: 20.sp,
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
        );
  }
}
