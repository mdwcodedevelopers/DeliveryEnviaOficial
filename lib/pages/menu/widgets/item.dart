import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/labels/label4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Item extends StatelessWidget {
  String text;
  Color color;
  String imageString;
  Function onPress;

  Item({@required this.text, @required this.color, @required this.imageString, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width), vertical: height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
                  imageString, 
                  color: color,
                  fit: BoxFit.contain, height: width * 0.1, 
                  width: width * 0.1),
            SizedBox(width: width * 0.05,),
            Label4(colorbackground: color, text: text,)
          ],
        ),
      ),
    );
  }
}