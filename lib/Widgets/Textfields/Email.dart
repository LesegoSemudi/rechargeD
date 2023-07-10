import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Theme/Colors.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void clearText() {
    setState(() {
      _textEditingController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        controller: _textEditingController,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Enter Email',
          hintStyle: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 18,
            fontFamily: 'Gilroy',
          ),
          suffixIcon: GestureDetector(
            onTap: clearText,
            child: const Icon(
              Icons.cancel_outlined,
              color: AppColors.thirdColor,
              size: 20,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
