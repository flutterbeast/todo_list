import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/ui/custom_widgets/customTxtBtn.dart';

import '../../custom_widgets/customColors.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

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
              image: AssetImage("Assets/images/onboard2.png"),
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
                  txt: "Create Daily Routine",
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  alignment: Alignment.center,
                  child: Heading2(
                    h2txt:
                        "In Uptodo  you can create your personalized routine to stay productive",
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
