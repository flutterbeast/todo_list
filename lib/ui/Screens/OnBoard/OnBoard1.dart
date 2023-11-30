import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_widgets/customColors.dart';
import '../../custom_widgets/customTxtBtn.dart';

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
          const Expanded(
            flex: 6,
            child: Image(
              image: AssetImage("Assets/images/onboard1.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Heading1(
                  txt: "Manage your tasks",
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  alignment: Alignment.center,
                  child: Heading2(
                    h2txt:
                        "You can easily manage all of your daily tasks in DoMe for free",
                    h2Color: Colors.white.withOpacity(0.67),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
