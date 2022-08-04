import 'package:flutter/material.dart';

import '/utils/dimensions.dart';
import '/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonTitle;
  final Function() onPressed;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? textColor;
  const PrimaryButton(
      {required this.buttonTitle,
      required this.onPressed,
      this.buttonHeight,
      this.buttonWidth,
      this.textColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.height5),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: AudeckColors.yellowAppColor),
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
