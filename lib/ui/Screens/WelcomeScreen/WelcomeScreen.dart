import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/ui/custom_widgets/customColors.dart';
import 'package:todo_list/ui/custom_widgets/customTxtBtn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.appwhite.withOpacity(0.9),
                  weight: 1,
                  size: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Heading1(
              txt: "Welcome to UpTodo",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.82,
              alignment: Alignment.center,
              child: Heading2(
                h2txt:
                    "Please login to your account or create new account to continue",
                h2Color: Colors.white.withOpacity(0.67),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
            appButton(
              btnlabel: "LOGIN",
              typed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.btnColor,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Heading2(
                h2txt: "CREATE ACCOUNT",
                h2Size: 16,
                h2Color: Colors.white,
                h2width: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
