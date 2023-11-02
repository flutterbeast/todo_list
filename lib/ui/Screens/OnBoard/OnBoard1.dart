import 'package:flutter/material.dart';

import '../../custom_widgets/customColors.dart';

class OnBoard1 extends StatelessWidget {
  const OnBoard1({super.key});

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
            height: MediaQuery.of(context).size.height/8,
          ),
          Image(
            image: AssetImage("Assets/images/onboard1.png"),
          ),
        ],
      ),
    );
  }
}
