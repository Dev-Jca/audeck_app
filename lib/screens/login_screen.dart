import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import '../widgets/buttons/primary_button.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Dimensions.height1,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Dimensions.height722,
                  width: Dimensions.width375,
                  decoration: const BoxDecoration(
                    color: AudeckColors.blackAppColor,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: Dimensions.height330),
                    child: CircleAvatar(
                      backgroundColor: Colors.white12,
                      radius: Dimensions.height350,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Dimensions.height446),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: Dimensions.height320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.height30),
                            topRight: Radius.circular(Dimensions.height30),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Dimensions.height40,
                        left: Dimensions.width21,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: Dimensions.height25,
                            fontWeight: FontWeight.bold,
                            color: AudeckColors.yellowAppColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: Dimensions.height80,
                        left: Dimensions.width21,
                        child: Text(
                          'Let\'s get started',
                          style: TextStyle(
                            fontSize: Dimensions.height12,
                            fontWeight: FontWeight.w500,
                            color: AudeckColors.blackAppColor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: Dimensions.height140,
                        child: Form(
                          child: Container(
                            height: Dimensions.height52,
                            width: Dimensions.width335,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius:
                                  BorderRadius.circular(Dimensions.height5),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: Dimensions.width10),
                                border: InputBorder.none,
                                label: Text(
                                  'Mobile Number',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey[700]!,
                                    width: 1,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.height5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: Dimensions.height75,
                        child: PrimaryButton(
                          buttonTitle: 'LOGIN',
                          onPressed: () {},
                          buttonWidth: Dimensions.width335,
                          buttonHeight: Dimensions.height52,
                          textColor: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: Dimensions.height5,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Dimensions.height16),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
