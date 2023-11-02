import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_list/ui/Screens/OnBoard/OnBoard1.dart';
import 'package:todo_list/ui/Screens/OnBoard/onBoard2.dart';
import 'package:todo_list/ui/Screens/OnBoard/onboard3.dart';
import 'package:todo_list/ui/Screens/WelcomeScreen/WelcomeScreen.dart';
import 'package:todo_list/ui/custom_widgets/customColors.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  PageController _controller = PageController();
  bool onlastpage = false;

  final List<Widget> _onboardingScreens = [
    OnBoard1(),
    OnBoard2(),
    OnBoard3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColors.primaryColor,
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: PageView(
                      controller: _controller,
                      onPageChanged: (index) {
                        setState(
                          () {
                            onlastpage = (index == 2);
                          },
                        );
                      },
                      children: _onboardingScreens),
                ),
                Expanded(
                  child: Container(

                    padding: EdgeInsets.only(left: 30,right: 30,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              _controller.previousPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Text("Back",style: TextStyle(
                              color: Colors.white,
                            ),),),
                        onlastpage
                            ? GestureDetector(
                                onTap: () {
                                  Get.to(
                                    WelcomeScreen(),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  height: 40,

                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff8567ff),
                                        Color(0xff6c47ff),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.blueGrey.withOpacity(0.9),
                                    //     spreadRadius: 3,
                                    //     offset: Offset(0, 3),
                                    //     blurRadius: 15,
                                    //   )
                                    // ],
                                  ),
                                  child: Text(
                                    "GET STARTED",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _controller.nextPage(
                                    duration: Duration(microseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Container(

                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff8567ff),
                                        Color(0xff6c47ff),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.blueGrey.withOpacity(0.9),
                                    //     spreadRadius: 3,
                                    //     offset: Offset(0, 3),
                                    //     blurRadius: 15,
                                    //   )
                                    // ],
                                  ),
                                  child: Text(
                                    "NEXT",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment(0, 0.1),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    SmoothPageIndicator(
                      effect: ExpandingDotsEffect(
                        spacing: 5,
                        dotHeight: 5,
                        dotWidth: 8,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.white,
                      ),
                      controller: _controller,
                      count: 3,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
