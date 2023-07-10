import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Screens/LoginScreen.dart';
import 'package:recharge_direct_login/Theme/Colors.dart';

class SignIn2 extends StatelessWidget {
  const SignIn2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Container(
          width: 98,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: AppColors.primaryColor,
          ),
          child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gilroy',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
