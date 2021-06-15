import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tile extends StatelessWidget {
  String image;
  String text;
  Color color;
  Tile({@required this.image, @required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    
    return GestureDetector(
      onTap: null,
      child: Container(
        height: height * 0.1,
        color: this.color,
        child: Container(
           margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: width * 0.12, 
                      width: width * 0.12,
                      child: SvgPicture.asset(
                        this.image, 
                        fit: BoxFit.contain,
                        height: width * 0.12, 
                        width: width * 0.12,
                        color: getColor()[100]),
                    ),
                  SizedBox(width: width * 0.04),
                   Text(this.text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: getColor()[100],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          fontSize: responsive.ip(3)))
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_outlined, color: getColor()[100],),
                 SizedBox(width: width * 0.05)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}