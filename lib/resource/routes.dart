import 'package:envia2godelivery/pages/out/home_out.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes() {
  return {
       'home_out': (BuildContext context) => HomeOutPage()
  };

}