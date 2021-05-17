import 'package:flutter/material.dart';
import 'package:phone_input_form/mobx/phone_input_state.dart';
import 'package:provider/provider.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  void dispose() {
    var state = Provider.of<PhoneInputState>(context);
    state.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<PhoneInputState>(context);

    return TextField(
      controller: state.inputController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusColor: Colors.grey,
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        hintText: '(201) 555-0123',
        hintStyle: TextStyle(color: Colors.grey),
      ),
      showCursor: true,
      readOnly: true,
      autocorrect: false,
      autofocus: true,
    );
  }
}
