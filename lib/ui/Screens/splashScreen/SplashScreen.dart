import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/ui/custom_widgets/customColors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

            Container(
              child: Image.network("https://images.unsplash.com/photo-1697014960830-44289859e55b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80"),
            ),
            Text("UpTodo", style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),)
          ],
        ),
      ),
    );
  }
}
