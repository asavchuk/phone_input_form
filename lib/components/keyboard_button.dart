import 'package:flutter/material.dart';
import 'package:phone_input_form/constants.dart';
import 'package:phone_input_form/mobx/phone_input_state.dart';
import 'package:provider/provider.dart';

class KeyboardButton extends StatefulWidget {
  const KeyboardButton({required this.buttonChild, this.digit});
  final Widget buttonChild;
  final int? digit;

  @override
  _KeyboardButtonState createState() => _KeyboardButtonState();
}

class _KeyboardButtonState extends State<KeyboardButton> {
  var color = Colors.white;

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<PhoneInputState>(context);
    return GestureDetector(
      onTap: () {
        state.setPhone(widget.digit.toString());
        setState(() => color = kActiveColor);
        Future.delayed(const Duration(milliseconds: 100), () {
          setState(() {
            color = Colors.white;
          });
        });
      },
      child: Container(
        padding: EdgeInsets.all(0).copyWith(bottom: 4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 0,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        margin: EdgeInsets.all(4),
        child: widget.buttonChild,
      ),
    );
  }
}
