import 'package:audeck/utils/colors.dart';
import 'package:audeck/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: Dimensions.height724,
            width: Dimensions.width375,
            decoration: const BoxDecoration(
              color: AudeckColors.yellowAppColor,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width12,
                right: Dimensions.width12,
              ),
              child: const CircleAvatar(backgroundColor: Colors.white12),
            ),
          ),
          Container(
            height: Dimensions.height44,
            width: Dimensions.width375,
            decoration: const BoxDecoration(
              color: AudeckColors.lightYellowAppColor,
            ),
          ),
        ],
      ),
    );
  }
}
