// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_input_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PhoneInputState on _PhoneInputState, Store {
  Computed<String>? _$formattedComputed;

  @override
  String get formatted =>
      (_$formattedComputed ??= Computed<String>(() => super.formatted,
              name: '_PhoneInputState.formatted'))
          .value;
  Computed<bool>? _$isNotEmptyComputed;

  @override
  bool get isNotEmpty =>
      (_$isNotEmptyComputed ??= Computed<bool>(() => super.isNotEmpty,
              name: '_PhoneInputState.isNotEmpty'))
          .value;
  Computed<bool>? _$isReadyComputed;

  @override
  bool get isReady => (_$isReadyComputed ??=
          Computed<bool>(() => super.isReady, name: '_PhoneInputState.isReady'))
      .value;

  final _$_inputAtom = Atom(name: '_PhoneInputState._input');

  @override
  String get _input {
    _$_inputAtom.reportRead();
    return super._input;
  }

  @override
  set _input(String value) {
    _$_inputAtom.reportWrite(value, super._input, () {
      super._input = value;
    });
  }

  final _$_PhoneInputStateActionController =
      ActionController(name: '_PhoneInputState');

  @override
  dynamic setPhone(String s) {
    final _$actionInfo = _$_PhoneInputStateActionController.startAction(
        name: '_PhoneInputState.setPhone');
    try {
      return super.setPhone(s);
    } finally {
      _$_PhoneInputStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clear() {
    final _$actionInfo = _$_PhoneInputStateActionController.startAction(
        name: '_PhoneInputState.clear');
    try {
      return super.clear();
    } finally {
      _$_PhoneInputStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formatted: ${formatted},
isNotEmpty: ${isNotEmpty},
isReady: ${isReady}
    ''';
  }
}
