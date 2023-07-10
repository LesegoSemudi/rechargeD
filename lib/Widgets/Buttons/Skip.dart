import 'package:flutter/material.dart';
import 'package:recharge_direct_login/Theme/Colors.dart';

class Skip extends StatelessWidget {
  const Skip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primaryColor,
              size: 10,
            ),
          ),
          Align(
            alignment: Alignment(0.75, 0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primaryColor,
              size: 10,
            ),
          )
        ],
      ),
    );
  }
}