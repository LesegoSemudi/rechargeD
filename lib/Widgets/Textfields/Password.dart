import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Theme/Colors.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _Password1State();
}

class _Password1State extends State<Password> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        cursorColor: Colors.black,
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Enter Password',
          hintStyle: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 18,
            fontFamily: 'Gilroy',
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_off_outlined,
              color: AppColors.thirdColor,
              size: 20,
            ),
            onPressed: () {
              setState(
                () {
                  _isPasswordVisible = !_isPasswordVisible;
                },
              );
            },
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
