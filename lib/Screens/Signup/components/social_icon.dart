import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_sipnup/constants.dart';

class SocialIcon extends StatelessWidget {
  final iconSrc;
  final Function press;
  const SocialIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: press,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: kPrimaryLightColor),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconSrc, height: 20, width: 20),
          ),
        ),
      ],
    );
  }
}
