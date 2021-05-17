import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:phone_input_form/components/input.dart';
import 'package:phone_input_form/components/keyboard.dart';
import 'package:phone_input_form/components/round_icon_button.dart';
import 'package:phone_input_form/mobx/phone_input_state.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class PhoneInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<PhoneInputState>(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: const Text(
                              'Get Started',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Input()),
                      Observer(
                        builder: (_) {
                          if (state.isNotEmpty) {
                            return IconButton(
                              padding: EdgeInsets.only(bottom: 20),
                              constraints: BoxConstraints(maxWidth: 20, maxHeight: 22),
                              splashRadius: 1,
                              icon: const Icon(Icons.cancel, color: kActiveColor),
                              onPressed: () => state.clear(),
                            );
                          }
                          return Container();
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black54,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Enter your phone number',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Observer(
                builder: (_) {
                  return RoundIconButton(
                    icon: Icons.arrow_forward,
                    onPressed: () {
                      if (state.isReady) {
                        print('it is ready');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Success'),
                            duration: const Duration(milliseconds: 500),
                          ),
                        );
                      }
                    },
                    fillColor: state.isReady ? kActiveColor : kDisabledButtonColor,
                  );
                },
              ),
              const SizedBox(width: 18),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2).copyWith(top: 3),
              color: Colors.grey.shade300,
              child: const Keyboard(),
            ),
          ),
        ],
      ),
    );
  }
}
