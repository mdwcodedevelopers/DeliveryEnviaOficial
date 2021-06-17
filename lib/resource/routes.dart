import 'package:envia2godelivery/pages/menu/menu.dart';
import 'package:envia2godelivery/pages/out/home_out.dart';
import 'package:envia2godelivery/pages/out/register/form.dart';
import 'package:envia2godelivery/pages/out/login/reset_password.dart';
import 'package:envia2godelivery/pages/out/login/sign-in.dart';
import 'package:envia2godelivery/pages/profile/addresses.dart';
import 'package:envia2godelivery/pages/profile/edit.dart';
import 'package:envia2godelivery/pages/profile/pay_methods.dart';
import 'package:envia2godelivery/pages/profile/profie.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes() {
  return {
       'home_out': (BuildContext context) => HomeOutPage(),
       'sign_in': (BuildContext context) => SingInPage(),
       'register': (BuildContext context) => RegisterForm(),
       'reset_password': (BuildContext context) => ResetPassword(),
       'profile': (BuildContext context) => Profile(),
       'edit': (BuildContext context) => Edit(),
       'addresses': (BuildContext context) => Addresses(),
       'pay_pethods': (BuildContext context) => PayMethods(),
       'menu': (BuildContext context) => Menu(),
  };

}