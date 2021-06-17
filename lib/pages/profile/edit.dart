import 'package:envia2godelivery/pages/profile/widgets/app_bar.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/buttons/button2.dart';
import 'package:envia2godelivery/widgets/inputs/input1.dart';
import 'package:envia2godelivery/widgets/inputs/input_password.dart';
import 'package:envia2godelivery/widgets/labels/label_small.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Edit extends StatelessWidget {
  // const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      backgroundColor: getColor()[400],
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    AppBarProfile(text: 'EDITAR',),
                    _part1(responsive, height, width),
                     SizedBox(height: height * 0.02),
                    _part2(context, responsive, height, width),
                     SizedBox(height: height * 0.15),
                     _part3(context, height, width, responsive)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _part1(Responsive responsive, double height, double width){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
      child: Stack(
        children: [
          Container(
            child: SvgPicture.asset(
              'images/Icono_Pefil.svg', 
              fit: BoxFit.contain, height: width * 0.4, 
              color: getColor()[200],
              width: width * 0.4),
          ),
            Positioned(
              bottom: height * 0.03,
              right: 0,
              child: CupertinoButton(
                onPressed: null,
                padding: EdgeInsets.all(0),
                child: SvgPicture.asset(
                'images/Icono_Camara.svg', 
                fit: BoxFit.contain, height: width * 0.11, 
                width: width * 0.11),
              ),
            ),
        ],
      ),
    );
  }

  Widget _part2(BuildContext context, Responsive responsive, double height, double width){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
      child: Container(
      margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardContent(width)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LabelSmall(text: 'Nombre:', colorbackground: getColor()[50]),
              SizedBox(width: width*0.03),
              Input1(type: TextInputType.text)
            ],
          ),
          SizedBox(height: height*0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LabelSmall(text: 'Apellido:', colorbackground: getColor()[50]),
              SizedBox(width: width*0.03),
              Input1(type: TextInputType.text)
            ],
          ),
          SizedBox(height: height*0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LabelSmall(text: 'Correo:', colorbackground: getColor()[50]),
              SizedBox(width: width*0.03),
              Input1(type: TextInputType.emailAddress)
            ],
          ),
          SizedBox(height: height*0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LabelSmall(text: 'Contraseña:', colorbackground: getColor()[50]),
              SizedBox(width: width*0.03),
              InputPassword(),
            ],
          ),
        ],
      ),
     ),
    );
  }

  Widget _part3(BuildContext context, double height, double width, Responsive responsive) {
    return Container(
      child: Column(
        children: [
          ButtonWidget2(text: 'Guardar Cambios', onClicked: (){
           
          }, color: getColor()[100]),
        ],
      ),
    );
  }

}