import 'package:flutter/material.dart';
import 'package:uirevice/constants.dart';

enum ButtonType {
  light,
  dark;
}

class CustomButton extends StatelessWidget {
  final String title;
  final Function onpress;
  final ButtonType type;
  const CustomButton(
      {super.key,
      required this.title,
      required this.onpress,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor:
                type == ButtonType.dark ? onprimary : primary.withOpacity(0.05),
            elevation: 0,
            backgroundColor: type == ButtonType.dark ? primary : primarylight,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          onpress();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
                color: type == ButtonType.dark ? Colors.white : primary),
          ),
        ));
  }
}
