import 'package:flutter/material.dart';

class AuthFormWidget extends StatelessWidget {
  AuthFormWidget({
    super.key,
    required this.phoneController,
    // required this.usernameController,
    // required this.emailController,
    // required this.dateController,
    // required this.passwordController,
    // required this.comfirmPasswordController,
  });

  final formKey = GlobalKey<FormState>();

  final TextEditingController phoneController;
  // final TextEditingController usernameController;
  // final TextEditingController emailController;
  // final TextEditingController dateController;
  // final TextEditingController passwordController;
  // final TextEditingController comfirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          Flexible(
            child: TextFormField(
              autofocus: true,
              controller: phoneController,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: const InputDecoration(
                prefixText: '+90',
                hintText: '  Telefon Numaranızı Giriniz',
                filled: true,
                alignLabelWithHint: true,
                labelText: 'Telefon Numaranızı Giriniz',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (!value!.contains('@') || !value.contains('com'))
                  return "Lütfen geçerli e-posta adresi giriniz.";
                return null;
              },
            ),
          ),
          // Flexible(
          //   child: TextFormField(
          //     autofocus: true,
          //     controller: usernameController,
          //     keyboardType: TextInputType.text,
          //     maxLength: 8,
          //     decoration: const InputDecoration(
          //       //prefixText: '+90',
          //       hintText: 'Kullanıcı Adı Giriniz',
          //       filled: true,
          //       alignLabelWithHint: true,
          //       labelText: 'Kullanıcı Adı Giriniz',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Flexible(
          //   child: TextFormField(
          //     autofocus: true,
          //     controller: emailController,
          //     keyboardType: TextInputType.emailAddress,
          //     maxLength: 16,
          //     decoration: const InputDecoration(
          //       hintText: 'Email Giriniz',
          //       filled: true,
          //       alignLabelWithHint: true,
          //       labelText: 'Email Giriniz',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Flexible(
          //   child: TextFormField(
          //     autofocus: true,
          //     obscureText: true,
          //     controller: passwordController,
          //     keyboardType: TextInputType.text,
          //     maxLength: 8,
          //     decoration: const InputDecoration(
          //       //prefixText: '+90',
          //       hintText: 'Password Giriniz',
          //       filled: true,
          //       alignLabelWithHint: true,
          //       labelText: 'Telefon Numaranızı Giriniz',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // Flexible(
          //   child: TextFormField(
          //     autofocus: true,
          //     obscureText: true,
          //     controller: comfirmPasswordController,
          //     keyboardType: TextInputType.text,
          //     maxLength: 8,
          //     decoration: const InputDecoration(
          //       hintText: 'Password doğrula Giriniz',
          //       filled: true,
          //       alignLabelWithHint: true,
          //       labelText: 'Password Giriniz',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
