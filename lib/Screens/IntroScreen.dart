import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Widgets/Buttons/Register.dart';
import 'package:recharge_direct_login/Widgets/Buttons/SignIn2.dart';
import 'package:recharge_direct_login/Widgets/Buttons/Skip.dart';
import 'package:recharge_direct_login/Widgets/Dropdown/LanguageButton.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/Background.png',
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Picture.png',
                ),
              ),
              const Center(
                child: Column(
                  children: [
                    LanguageButton(),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignIn2(),
                        RegisterButton(),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Skip(),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
