import 'package:envia2godelivery/pages/out/home_out.dart';
import 'package:envia2godelivery/pages/out/register/form.dart';
import 'package:envia2godelivery/pages/out/login/reset_password.dart';
import 'package:envia2godelivery/pages/out/login/sign-in.dart';
import 'package:envia2godelivery/pages/profile/profie.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes() {
  return {
       'home_out': (BuildContext context) => HomeOutPage(),
       'sign_in': (BuildContext context) => SingInPage(),
       'register': (BuildContext context) => RegisterForm(),
       'reset_password': (BuildContext context) => ResetPassword(),
       'profile': (BuildContext context) => Profile(),
  };

}