import 'package:flutter/material.dart';

import '../../custom_widgets/customColors.dart';

class OnBoard3 extends StatelessWidget {
  const OnBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image(
            image: AssetImage("Assets/images/onboard3.png"),
          ),
        ],
      ),
    );
  }
}