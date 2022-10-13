import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Loginwidget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
    );
  }
}
