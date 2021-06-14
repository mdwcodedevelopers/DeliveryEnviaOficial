import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget1 extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final	Color color;

  const ButtonWidget1({
    Key key,
    @required this.text,
    @required this.onClicked,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Container(
      height: height * 0.07,
      width: width * 0.5,
      child: MaterialButton(
        onPressed: onClicked,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          this.text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: responsive.ip(2.8), fontWeight: FontWeight.w100),
        ),
      )
    );
  }
}
