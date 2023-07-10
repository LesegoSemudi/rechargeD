import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Theme/Colors.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: TextButton(
        onPressed: () {},
        child: Container(
          width: 98,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: Colors.white,
          ),
          child: const Center(
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 17,
                color: AppColors.primaryColor,
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
