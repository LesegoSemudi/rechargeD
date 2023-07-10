import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Widgets/Dropdown/LanguageButton.dart';
import 'package:recharge_direct_login/Widgets/Forms.dart';
import 'package:recharge_direct_login/Widgets/LoginWidget.dart';
import 'package:recharge_direct_login/Widgets/Register.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/Background.png',
                ),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LanguageButton(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                    child: Text(
                      'Sign In to recharge Direct',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                  LoginWidget(),
                  Forms(),
                  Register(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
