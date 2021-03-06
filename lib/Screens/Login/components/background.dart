import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: size.width * 0.35,
            child: Image.asset('assets/images/signup_top.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: size.width * 0.2,
            child: Image.asset('assets/images/main_bottom.png'),
          ),
          child,
        ],
      ),
    );
  }
}
