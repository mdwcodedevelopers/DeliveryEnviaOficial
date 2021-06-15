
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ButtonHome extends StatelessWidget {
  Function onPress;

  ButtonHome({@required this.onPress});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CupertinoButton(
            onPressed: this.onPress,
            padding: EdgeInsets.all(0),
            child: SvgPicture.asset(
              'images/Icono_Casa_Menu.svg', 
              fit: BoxFit.contain, height: width * 0.09, 
              width: width * 0.09),
          );
  }
}