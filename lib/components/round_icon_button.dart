import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPressed, this.fillColor});
  final IconData icon;
  final Function() onPressed;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(0),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(height: 46, width: 46),
      shape: CircleBorder(),
      fillColor: fillColor ?? kDisabledButtonColor,
      elevation: 0,
    );
  }
}
