import 'package:flutter/material.dart';
import 'package:phone_input_form/mobx/phone_input_state.dart';
import 'package:phone_input_form/screens/phone_input.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider(
        create: (BuildContext context) => PhoneInputState(),
        child: PhoneInput(),
      ),
    );
  }
}
