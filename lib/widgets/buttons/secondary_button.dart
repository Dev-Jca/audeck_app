import 'package:flutter/material.dart';

import '/utils/dimensions.dart';
import '/utils/colors.dart';

class SecondaryButton extends StatelessWidget {
  final String buttonTitle;
  final Function() onPressed;
  final double? buttonWidth;
  final double? buttonHeight;
  const SecondaryButton(
      {required this.buttonTitle,
      required this.onPressed,
      this.buttonHeight,
      this.buttonWidth,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.height5),
        border: Border.all(
          width: Dimensions.width2,
          color: AudeckColors.yellowAppColor,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.transparent),
        onPressed: onPressed,
        child: Text(buttonTitle),
      ),
    );
  }
}
