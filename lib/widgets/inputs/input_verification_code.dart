import 'package:envia2godelivery/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_box/verification_box.dart';

class VerificationCode extends StatelessWidget {
  // const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;


    return Container(
            height: height * 0.05,
            width: width * 0.8,
            child: Material(
              child: Center(
                child: VerificationBox(
                  type: VerificationBoxItemType.underline,
                  count: 4,
                  borderColor: getColor()[500],
                ),
              ),
            ),
          );
  }
}