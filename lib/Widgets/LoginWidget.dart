import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Widgets/Textfields/Email.dart';
import 'package:recharge_direct_login/Widgets/Textfields/Password.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Email(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Password(),
          ),
        ],
      ),
    );
  }
}
