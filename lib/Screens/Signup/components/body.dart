import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_sipnup/Screens/Login/components/background.dart';
import 'package:welcome_login_sipnup/components/rounded_input_field.dart';
import 'package:welcome_login_sipnup/components/rounded_password_field.dart';
import 'package:welcome_login_sipnup/components/rounded_button.dart';
import 'package:welcome_login_sipnup/components/already_have_An_account.dart';
import 'package:welcome_login_sipnup/Screens/Login/login_screen.dart';
import 'package:welcome_login_sipnup/Screens/Signup/components/ordivider.dart';
import 'package:welcome_login_sipnup/Screens/Signup/components/social_icon.dart';

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
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundInputField(
              hintText: 'Your email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
