import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/buttons/button_back.dart';
import 'package:envia2godelivery/widgets/buttons/button_home.dart';
import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {

 String text;

 AppBarMenu({@required this.text});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ButtonBack(onPress: (){Navigator.pop(context);}, color: getColor()[100]),
            ],
          ),
          Container(
            child: Material(
              child: Text('${this.text}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: getColor()[50],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                      fontSize: responsive.ip(3))),
            ),
          ),
        ],
      ),
    );
  }
}