import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final void Function() _textControlHandler;
  const TextControl(this._textControlHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _textControlHandler,
      child: const Text('Change text'),
    );
  }
}