part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm({Key? key}) : super(key: key);

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CuidapetTextFormField(label: 'Login'),
            SizedBox(height: 20.h),
            CuidapetTextFormField(label: 'Senha', obscureText: true),
            SizedBox(height: 20.h),
            CuidapetTextFormField(label: 'Confirma Senha', obscureText: true),
            SizedBox(height: 20.h),
            CuidapetDefaultButton(label: 'Cadastrar', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
