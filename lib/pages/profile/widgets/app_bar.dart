import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/buttons/button_back.dart';
import 'package:envia2godelivery/widgets/buttons/button_home.dart';
import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget {

 String text;

 AppBarProfile({@required this.text});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Container(
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ButtonBack(onPress: (){Navigator.pop(context);}, color: getColor()[50]),
                    SizedBox(width: width * 0.05,),
                    Text('${this.text}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: getColor()[50],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoMono',
                            fontSize: responsive.ip(3)))
                  ],
                ),
                ButtonHome(onPress: null)
              ],
            ),
    );
  }
}