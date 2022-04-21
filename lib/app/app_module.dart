import 'package:cuidapet_mobile/app/modules/auth/auth_module.dart';
import 'package:cuidapet_mobile/app/modules/auth/home/auth_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
     ModuleRoute('/auth', module: AuthModule())


     


   ];

}