import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/login/login_screen.dart';
import 'package:siam_biglee/onboarding/components/splash_data_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentpage = 0;
  final int _numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  List<Map<String, String>> onboarddata = [
    {
      "headertext": 'Track the fitness Progress',
      "descriptiontext":
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis',
    },
    {
      "headertext": 'Have a Personel Traineer',
      "descriptiontext":
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis',
    },
    {
      "headertext": 'Great Diet Plan',
      "descriptiontext":
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis',
    },
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(375, 670),
      context: context,
      minTextAdapt: true,
      orientation: Orientation.portrait,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 41.w,
            left: 36.w,
            right: 35.67.w,
            child: Container(
              width: 323.33.w,
              height: 303.33.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/onboardimage.png"),
                ),
              ),
            ),
          ),
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentpage = page;
                print(page);
              });
            },
            itemCount: onboarddata.length,
            itemBuilder: (context, index) => OnboardTextClass(
              headertext: onboarddata[index]["headertext"]!,
              descriptiontext: onboarddata[index]["descriptiontext"]!,
            ),
          ),
          Positioned(
            top: 593.w,
            left: 23.w,
            // right: 298.w,
            bottom: 67.w,
            child: Row(
              children: List.generate(
                onboarddata.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
          currentpage >= 2
              ? Positioned(
                  // top: 580.w,
                  left: 230.w,
                  right: 23.w,
                  bottom: 54.w,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    }),
                    child: Container(
                      width: 129.w,
                      height: 36.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Color.fromRGBO(232, 56, 56, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 9.w,
                            bottom: 9.w,
                            left: 16.w,
                            right: 16.w,
                            child: Container(
                              width: 90.w,
                              height: 18.w,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Get Started',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.sp,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w700,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Positioned(
                  // top: 580.w,
                  left: 261.w,
                  right: 23.w,
                  bottom: 54.w,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }),
                    child: Container(
                      width: 91.w,
                      height: 36.w,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0.w,
                            left: 0.w,
                            child: Container(
                              width: 91.w,
                              height: 36.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color: Color.fromRGBO(39, 39, 39, 1),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 9.w,
                                    left: 16.w,
                                    child: Container(
                                      height: 18.w,
                                      width: 37.w,
                                      // color : Colors.red,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          'Next',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 15.sp,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.w700,
                                              height: 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 12.94.w,
                                    left: 61.13.w,
                                    bottom: 12.94.w,
                                    child: Container(
                                      height: 10.13.w,
                                      width: 15.75.w,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/icons/bi_arrow-right.png"),
                                            fit: BoxFit.contain),
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
                  ),
                ),
        ],
      ),
    );
  }

  Container buildDot({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10.w,
      width: currentpage == index ? 26.w : 10.w,
      decoration: BoxDecoration(
        color: currentpage == index ? Colors.red : Colors.white,
        borderRadius: BorderRadius.circular(50.w),
      ),
    );
  }
}
