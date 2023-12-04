/*import 'package:flutter/material.dart';
import 'package:models/core/base/context_extensions.dart';
import 'package:models/core/components/authbutton_widget.dart';
import 'package:models/core/components/authform_widget.dart';
import 'package:models/models/user.dart';
import 'package:models/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController comfirmPasswordController = TextEditingController();
  bool user = true;
  bool? buttonLoad;
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AuthFormWidget(
                  phoneController: phoneController,
                  usernameController: usernameController,
                  emailController: emailController,
                  dateController: dateController,
                  passwordController: passwordController,
                  comfirmPasswordController: comfirmPasswordController,
                ),
                buttonLoad == true
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : AuthButtonWidget(
                        funct: () {
                          setState(() {
                            buttonLoad = auth.isLoading;
                          });
                          auth.register(phoneController.text as User, context);
                        },
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:models/core/base/context_extensions.dart';
import 'package:models/core/components/authbutton_widget.dart';
import 'package:models/core/components/authform_widget.dart';
import 'package:models/models/user.dart';
import 'package:models/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController phoneController = TextEditingController();
  bool user = true;
  bool? buttonLoad;
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                 const Text(
                    'Social Media',
                    style: TextStyle(fontSize: 30),

                Padding(
                  padding:
                      context.paddingPageSymetricH + context.paddingTop * 2,
                  child: AuthFormWidget(phoneController: phoneController),
                ),
                SizedBox(
                  child: buttonLoad == true
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : AuthButtonWidget(
                          funct: () {
                            setState(() {
                              buttonLoad = auth.isLoading;
                            });
                            auth.register(
                                phoneController.text as User, context);
                          },
                        ),
                )
             ), ],
            ),
          ),
        ),
      ),
    );
  }
}
