import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_sipnup/Screens/Welcome/components/background.dart';
import 'package:welcome_login_sipnup/constants.dart';
import 'package:welcome_login_sipnup/components/rounded_button.dart';
import 'package:welcome_login_sipnup/Screens/Login/login_screen.dart';
import 'package:welcome_login_sipnup/Screens/Signup/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              textColor: kPrimaryLightColor,
            ),
            RoundedButton(
                text: 'SIGNUP',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
                textColor: Colors.black,
                color: kPrimaryLightColor)
          ],
        ),
      ),
    );
  }
}
