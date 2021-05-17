import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'keyboard_button.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: KeyboardButton(
                digit: 1,
                buttonChild: Column(
                  children: [
                    const Text('1', style: kDigitStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('', style: kCharsStyle)]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 2,
                buttonChild: Column(
                  children: [
                    const Text('2', style: kDigitStyle),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('A B C', style: kCharsStyle),
                    ]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 3,
                buttonChild: Column(
                  children: [
                    const Text('3', style: kDigitStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('D E F', style: kCharsStyle)]),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: KeyboardButton(
                digit: 4,
                buttonChild: Column(
                  children: [
                    const Text('4', style: kDigitStyle),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('G H I', style: kCharsStyle),
                    ]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 5,
                buttonChild: Column(
                  children: [
                    const Text('5', style: kDigitStyle),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('J K L', style: kCharsStyle),
                    ]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 6,
                buttonChild: Column(
                  children: [
                    const Text('6', style: kDigitStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('M N O', style: kCharsStyle)]),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: KeyboardButton(
                digit: 7,
                buttonChild: Column(
                  children: [
                    const Text('7', style: kDigitStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('P Q R S', style: kCharsStyle)]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 8,
                buttonChild: Column(
                  children: [
                    const Text('8', style: kDigitStyle),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('T U V', style: kCharsStyle),
                    ]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 9,
                buttonChild: Column(
                  children: [
                    const Text('9', style: kDigitStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [const Text('W X Y Z', style: kCharsStyle)]),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Positioned(
                        left: 18,
                        child: IconButton(
                          iconSize: 14,
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          onPressed: null,
                        ),
                      ),
                      IconButton(
                        iconSize: 14,
                        icon: FaIcon(
                          FontAwesomeIcons.asterisk,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onPressed: null,
                      ),
                      Positioned(
                        right: 18,
                        child: IconButton(
                          iconSize: 14,
                          icon: FaIcon(
                            FontAwesomeIcons.hashtag,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: KeyboardButton(
                digit: 0,
                buttonChild: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 34,
                        child: Center(child: const Text('0', style: kDigitStyle)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.backspace_outlined,
                  color: Colors.black.withOpacity(0.6),
                  size: 18,
                ),
                onPressed: null,
              ),
            ),
          ],
        )
      ],
    );
  }
}
