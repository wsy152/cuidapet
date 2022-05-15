part of '../login_page.dart';

class _LoginRegisterButton extends StatefulWidget {

  const _LoginRegisterButton({ Key? key }) : super(key: key);

  @override
  _LoginRegisterButtonState createState() => _LoginRegisterButtonState();
}

class _LoginRegisterButtonState extends State<_LoginRegisterButton> {

   @override
   Widget build(BuildContext context) {
       return Wrap(
         direction: Axis.horizontal,
         alignment: WrapAlignment.center,
         spacing: 10,
         runSpacing: 10,
         children: [
           RoundedButtonWithIcon(onTap: (){}, width: .42.sw, color: const Color(0xFF426783), icon: Cuidapeticons.facebook, label: 'facebook'),
           RoundedButtonWithIcon(onTap: (){}, width: .42.sw, color: const Color(0xFFE15031), icon: Cuidapeticons.google, label: 'Google'),
           RoundedButtonWithIcon(onTap: (){
             Navigator.pushNamed(context, '/auth/register');

           }, width: .42.sw, color: context.primaryColorDark, icon: Icons.mail, label: 'Cadastre -se')
         ],

       );
  }
}