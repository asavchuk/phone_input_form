import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'phone_input_state.g.dart';

class PhoneInputState = _PhoneInputState with _$PhoneInputState;

abstract class _PhoneInputState with Store {
  var inputController = TextEditingController();

  dispose() {
    inputController.dispose();
  }

  @observable
  String _input = '';

  @action
  setPhone(String s) {
    if (_input.length >= 10) return;
    _input += s;
    inputController.text = formatted;
    inputController.selection =
        TextSelection.fromPosition(TextPosition(offset: inputController.text.length));
  }

  @computed
  String get formatted => _formatPhone(_input);

  @computed
  bool get isNotEmpty {
    if (_input.isNotEmpty) return true;
    return false;
  }

  @computed
  bool get isReady {
    if (_input.length >= 10) return true;
    return false;
  }

  @action
  clear() {
    _input = '';
    inputController.clear();
  }
}

String _formatPhone(String phone) {
  var result = '';

  if (phone.isNotEmpty) {
    result = '(' + phone;
  }

  if (phone.length >= 3) {
    result = StringUtils.addCharAtPosition(result, ') ', 4);
  }

  if (phone.length >= 6) {
    result = StringUtils.addCharAtPosition(result, '–', 9);
  }

  return result;
}
