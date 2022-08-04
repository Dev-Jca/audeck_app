import 'package:audeck/screens/login_screen.dart';
import 'package:audeck/widgets/buttons/primary_button.dart';
import 'package:audeck/widgets/buttons/secondary_button.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Dimensions.height01,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: Dimensions.height722,
                width: Dimensions.width375,
                decoration: const BoxDecoration(
                  color: AudeckColors.blackAppColor,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: Dimensions.height330,
                      left: Dimensions.width12,
                      right: Dimensions.width12),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white12,
                  ),
                ),
              ),
              Positioned(
                bottom: Dimensions.height290,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.height20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: Dimensions.height260,
                child: Text(
                  'Enjoy the worlds Audeck',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.height14,
                  ),
                ),
              ),
              Positioned(
                bottom: Dimensions.height170,
                child: SecondaryButton(
                  buttonTitle: 'SIGNUP',
                  onPressed: () {},
                  buttonWidth: Dimensions.width335,
                  buttonHeight: Dimensions.height52,
                ),
              ),
              Positioned(
                bottom: Dimensions.height100,
                child: PrimaryButton(
                  textColor: AudeckColors.blackAppColor,
                  buttonTitle: 'LOGIN',
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  buttonWidth: Dimensions.width335,
                  buttonHeight: Dimensions.height52,
                ),
              ),
              Positioned(
                bottom: Dimensions.height5,
                child: TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: const TextSpan(
                      text: 'Login as ',
                      style: TextStyle(color: AudeckColors.yellowAppColor),
                      children: [
                        TextSpan(
                          text: 'Guest',
                          style: TextStyle(
                              color: AudeckColors.yellowAppColor, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: Dimensions.height44,
            width: Dimensions.width375,
            decoration: const BoxDecoration(
              color: AudeckColors.lightBlackAppColor,
            ),
          ),
        ],
      ),
    );
  }
}
