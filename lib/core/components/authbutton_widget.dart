import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({
    super.key,
    this.funct,
  });

  final void Function()? funct;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: funct, child: const Text('Gönder'));
  }
}
