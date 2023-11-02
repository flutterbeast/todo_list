import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/ui/Screens/OnBoard/OnBoard.dart';
import 'package:todo_list/ui/custom_widgets/customColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      (() {
        Get.to(
          const OnBoard(),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Height / 5,
            ),
            const Image(
              image: AssetImage("Assets/images/into.png"),
            ),
            Text(
              "UpTodo",
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: Height / 3,
            ),
            const SpinKitCircle(
              color: Colors.white,
              duration: Duration(
                seconds: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
