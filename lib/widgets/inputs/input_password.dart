import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  // const Input1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    
    return Material(
      child: Container(
            height: height * 0.05,
            width: width * 0.55,
            child: 
             TextField(
                style: TextStyle(
                    fontSize: responsive.ip(2),
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(122, 153, 222, 1)),
                    obscureText: true,
                // controller: controladorEmail,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(173, 181, 189, 1),
                    fontSize: responsive.ip(2),
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: CupertinoButton(
                    padding: EdgeInsets.all(0),
                      child: Icon(Icons.visibility_off,
                          color: getColor()[50]),
                      onPressed: () {
                        
                  }),
                  // errorText: 'Error',
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(173, 181, 189, 0.5)),
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(25.0),
                    ),
                  ),
                  prefixIcon: Image(image: AssetImage('images/linea-azul.png'), fit: BoxFit.contain, height: height * 0.04, width: width* 0.001,)
                ),
                onChanged: (value) => {
                  
                }),
    ));
  }
}