import 'package:envia2godelivery/pages/profile/widgets/app_bar.dart';
import 'package:envia2godelivery/pages/profile/widgets/tile.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatelessWidget {
  // const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      backgroundColor: getColor()[400],
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              AppBarProfile(text: 'PERFIL',),
              _part1(context, responsive, height, width),
               SizedBox(height: height * 0.02),
              _part2(context, responsive, height, width),
            ],
          ),
        ),
      ),
    );
  }

  Widget _part1(BuildContext context, Responsive responsive, double height, double width){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
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
                    'images/Icono_Lapiz_Editar.svg', 
                    fit: BoxFit.contain, height: width * 0.11, 
                    width: width * 0.11),
                  ),
                ),
            ],
          ),
          SizedBox(width: width * 0.05),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.03),
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, 'edit');},
                child: Text('¡Hola Sofia!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: getColor()[200],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-Bold',
                          fontSize: responsive.ip(2.5))),
              ),
              Text('alecruz@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat-ExtraLight',
                        fontSize: responsive.ip(2))),
              Text('5037123-4589',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat-ExtraLight',
                        fontSize: responsive.ip(2))),
            ],
          )
        ],
      ),
    );
  }

  Widget _part2(BuildContext context, Responsive responsive, double height, double width){
    return Column(
      children: [
        Tile(image: 'images/Icono_Ubicación.svg', text: 'Tus direcciones', color: getColor()[300], onTap: (){Navigator.pushNamed(context, 'addresses');}),
        Tile(image: 'images/Icono_Billete.svg', text: 'Formas de pago', color: getColor()[400], onTap: (){Navigator.pushNamed(context, 'pay_pethods');}),
        Tile(image: 'images/Icono_Signo_de_Pregunta.svg', text: 'Ayuda', color: getColor()[300], onTap: null),
        Tile(image: 'images/Icono_Cerrar_Sesión.svg', text: 'Cerrar sesión', color: getColor()[400], onTap: (){Navigator.pushReplacementNamed(context, 'home_out');}),
      ],
    );
  }
}