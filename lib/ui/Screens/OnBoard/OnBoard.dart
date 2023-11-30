import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_list/ui/Screens/OnBoard/OnBoard1.dart';
import 'package:todo_list/ui/Screens/OnBoard/onBoard2.dart';
import 'package:todo_list/ui/Screens/OnBoard/onboard3.dart';
import 'package:todo_list/ui/Screens/WelcomeScreen/WelcomeScreen.dart';
import 'package:todo_list/ui/custom_widgets/customColors.dart';
import 'package:todo_list/ui/custom_widgets/customTxtBtn.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  PageController _controller = PageController();
  bool onlastpage = false;

  final List<Widget> _onboardingScreens = [
    const OnBoard1(),
    const OnBoard2(),
    const OnBoard3(),
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
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 40,
                  ),
                  alignment: Alignment.centerLeft,
                  child: txtbtn(
                    taped: () {
                      Get.to(
                        const WelcomeScreen(),
                      );
                    },
                    btntxt: 'SKIP',
                    txtColor: Colors.white.withOpacity(0.67),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(
                        () {
                          onlastpage = (index == 2);
                        },
                      );
                    },
                    children: _onboardingScreens,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        txtbtn(
                          taped: () {
                            _controller.previousPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          btntxt: 'BACK',
                          txtColor: Colors.white.withOpacity(0.67),
                          btntxtSize: 18,
                        ),
                        onlastpage
                            ? appButton(
                                btnlabel: "GET STARTED",
                                btntxtSize: 16,
                                typed: () {
                                  Get.to(
                                    const WelcomeScreen(),
                                  );
                                },
                              )
                            : appButton(
                                btnlabel: "NEXT",
                                typed: () {
                                  _controller.nextPage(
                                    duration: const Duration(microseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                                },
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.75,
            left: MediaQuery.of(context).size.width * 0.43,
            child: Container(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                  spacing: 5,
                  dotHeight: 5,
                  dotWidth: 8,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                ),
                controller: _controller,
                count: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
