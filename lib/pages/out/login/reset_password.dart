import 'dart:ui';
import 'package:envia2godelivery/blocs/bloc_general.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/backgrounds/backgroung2.dart';
import 'package:envia2godelivery/widgets/buttons/button1.dart';
import 'package:envia2godelivery/widgets/buttons/button_back.dart';
import 'package:envia2godelivery/widgets/inputs/input1.dart';
import 'package:envia2godelivery/widgets/inputs/input_password.dart';
import 'package:envia2godelivery/widgets/labels/label_small.dart';
import 'package:envia2godelivery/widgets/modals/modalSimple.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  // const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    blocGeneral.changeOpenModal(false);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return StreamBuilder(
        stream: blocGeneral.openModalStream,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshopt) {
          if (snapshopt.hasData) {
            if (snapshopt.data == true) {
              return _scaffoldModalTrue(height, width, responsive);
            } else {
              return _scaffoldModalFalse(height, width, responsive);
            }
          } else if (snapshopt.hasError) {
            return Container();
          } else {
            return Container(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }

Widget _part1(double height, double width, Responsive responsive) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width * 0.1,
            child: ButtonBack(onPress: (){Navigator.pop(context);}, color: getColor()[50])),
          Material(
            child: Container(
              child: Text('RESTAURAR CONTRASEÑA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: getColor()[50],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-Bold',
                      fontSize: responsive.ip(2.2)))),
          ),
          Container(
            width: width * 0.02,
          )
        ],
      ),
    );
  }

Widget _part2(double height, double width, Responsive responsive) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardContent(width)),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelSmall(text: 'Correo:', colorbackground: getColor()[50]),
            SizedBox(width: width*0.03),
            Input1(type: TextInputType.emailAddress)
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelSmall(text: 'Contaseña:', colorbackground: getColor()[50]),
            SizedBox(width: width*0.03),
            InputPassword()
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelSmall(text: 'Confirmar:', colorbackground: getColor()[50]),
            SizedBox(width: width*0.03),
            InputPassword()
          ],
        ),
        SizedBox(height: height*0.02),

      ],
    ),
  );
 }


   Widget _part3(double height, double width, Responsive responsive) {
    return Container(
      child: Column(
        children: [
          ButtonWidget1(text: 'Continuar', onClicked: (){
                blocGeneral.changeOpenModal(true);
          }, color: getColor()[100]),
         SizedBox(height: height*0.05),
         Container(
                  child: Text('Necesito ayuda',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: getColor()[100],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-Bold',
                          fontSize: responsive.ip(1.5))))
        ],
      ),
    );
  }

  /* #region SE MOSTRARA SEGUN EL ESTADO DEL BLOC MODAL */
    Widget _scaffoldModalTrue(double height, double width, Responsive responsive){
      return Stack(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Background2(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.2),
                          _part1(height, width, responsive),
                          SizedBox(height: height * 0.05),
                          _part2(height, width, responsive),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _part3(height, width, responsive),
                          SizedBox(height: height * 0.1),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                color: Colors.white.withOpacity(0.2),
                child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: height * 0.18, horizontal: width * 0.04),
                    child: Center(
                        child: ModalSimple(
                          legend: '¡Contraseña guardada con éxito!',
                          textButton: 'Ok',
                          onPress: (){
                            blocGeneral.changeOpenModal(false);
                          },))),
              ),
            )
        ],
      );
    }

      Widget _scaffoldModalFalse(double height, double width, Responsive responsive){
    return Stack(
       alignment: Alignment.center,
      children: [
        Background2(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: height * 0.2),
                    _part1(height, width, responsive),
                    SizedBox(height: height * 0.05),
                    _part2(height, width, responsive),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    _part3(height, width, responsive),
                    SizedBox(height: height * 0.1),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /* #endregion */
}