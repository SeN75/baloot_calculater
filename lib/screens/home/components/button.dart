import 'package:flutter/material.dart';

import '../../../constants.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.buttonThem,
    required this.press,
    required this.text,
  }) : super(key: key);
  final int buttonThem;
  final VoidCallback press;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: pSpace - 10),
      child: ElevatedButton(
        onPressed: press,
        child: Text(text),
        style: ElevatedButton.styleFrom(
            primary: buttonThem == 0 ? cPrimary : cBackground,
            onPrimary: buttonThem == 0 ? cBackground : cPrimary,
            padding: EdgeInsets.all(pSpace * 1),
            shadowColor: Colors.transparent,
            side: BorderSide(
              width: 1,
              color: buttonThem == 1 ? cPrimary : cPrimary,
            )),
      ),
    );
  }
}
