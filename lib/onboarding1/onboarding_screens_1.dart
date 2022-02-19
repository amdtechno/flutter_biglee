import 'package:flutter/cupertino.dart';
import 'package:onboarding/onboarding.dart';
import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/dashboard/dashboard_screens.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnboardingReqScreens extends StatefulWidget {
  const OnboardingReqScreens({Key? key}) : super(key: key);

  @override
  _OnboardingReqScreensState createState() => _OnboardingReqScreensState();
}

class _OnboardingReqScreensState extends State<OnboardingReqScreens> {
  int currentpage = 0;
  bool s = false;
  bool n = false;
  bool morning = false;
  bool afternoon = false;
  bool evening = false;
  bool night = false;

  bool pcos = false;
  bool hyper = false;
  bool thyroid = false;
  bool diabetes = false;
  bool heart = false;
  bool renal = false;
  bool noneofabove = false;

  bool vegan = false;
  bool Vegetarian = false;
  bool nonVegetarian = false;
  bool Eggetetian = false;

  bool fatloss = false;
  bool bodyrecomposition = false;
  bool weightgain = false;

  String? valueChoose;
  String? _radioValue;
  String? _radioworkoutValue;
  String? choice;

  final access_type_controller = TextEditingController();
  final supplements_type_controller = TextEditingController();
  final PageController controller = PageController(initialPage: 0);
  List listItem = [
    "y",
    "N",
  ];
  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'Y':
          choice = value;
          break;
        case 'N':
          choice = value;
          break;

        default:
          choice = null;
      }
      debugPrint(choice.toString()); //Debug the choice in console
    });
  }

  @override
  void setState(VoidCallback fn) {
    print(controller);
    super.setState(fn);
  }

  _onPageViewChange(int page) {
    setState(() {
      currentpage = page;
    });
    print("Current Page: " + page.toString());
    print(page);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height
        ),
        designSize: Size(375, 670),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Container(
            width: 53.9.w,
            height: 58.0.w,
            child: Image.asset("assets/images/biglee.png"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(45.w, 24.55.w, 45.w, 0.0.w),
            child: Container(
              width: 285.w,
              height: 4.w,
              child: StepProgressIndicator(
                totalSteps: 7,
                currentStep: currentpage + 1,
                // selectedGradientColor: currentpage == currentpage ? LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [Colors.white, Colors.white],
                // ) : LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [Colors.red, Colors.red],
                // ),
                selectedColor: currentpage == 0 ? Colors.white : Colors.red,
                unselectedColor: Colors.grey[800]!,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5.w),
            // color: Colors.blue,
            height: MediaQuery.of(context).size.height / 1.4,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(49.w, 24.0.w, 49.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 277.w,
                        child: Text(
                          'Please help us get to know you better?',
                          textScaleFactor: .9999,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'MontserratMed',
                              fontSize: 14.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(95.w, 38.w, 0.w, 0.w),
                          child: Container(
                            width: 53.w,
                            height: 17.w,
                            // color: Colors.red,
                            child: Center(
                              child: Text(
                                'Weight',
                                textScaleFactor: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratMed',
                                    fontSize: 14.sp,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(30.w, 33.w, 0.w, 0.w),
                            child: Container(
                                width: 79.w,
                                height: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3),
                                    bottomLeft: Radius.circular(3),
                                    bottomRight: Radius.circular(3),
                                  ),
                                  color: Color.fromRGBO(39, 39, 39, 1),
                                  border: Border.all(
                                    color: Color.fromRGBO(39, 39, 39, 1),
                                    width: 1,
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(3.w, 40.w, 0.w, 0.w),
                            child: Container(
                              width: 16.w,
                              height: 15.w,
                              child: Text(
                                'kg',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 12.sp,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(95.w, 30.w, 0.w, 0.w),
                          child: Container(
                            width: 53.w,
                            height: 17.w,
                            // color: Colors.red,
                            child: Center(
                              child: Text(
                                'Height',
                                textScaleFactor: 1.05,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratMed',
                                    fontSize: 14.sp,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(30.w, 30.w, 0.w, 0.w),
                            child: Container(
                                width: 79.w,
                                height: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3),
                                    bottomLeft: Radius.circular(3),
                                    bottomRight: Radius.circular(3),
                                  ),
                                  color: Color.fromRGBO(39, 39, 39, 1),
                                  border: Border.all(
                                    color: Color.fromRGBO(39, 39, 39, 1),
                                    width: 1,
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(3.w, 37.w, 0.w, 0.w),
                            child: Container(
                              width: 20.w,
                              height: 15.w,
                              child: Text(
                                'cm',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 12.sp,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(95.w, 35.w, 0.w, 0.w),
                          child: Container(
                            width: 29.w,
                            height: 17.w,
                            // color: Colors.red,
                            child: Center(
                              child: Text(
                                'Age',
                                textScaleFactor: .99,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratMed',
                                    fontSize: 14.sp,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(54.w, 30.w, 0.w, 0.w),
                            child: Container(
                                width: 79.w,
                                height: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3),
                                    bottomLeft: Radius.circular(3),
                                    bottomRight: Radius.circular(3),
                                  ),
                                  color: Color.fromRGBO(39, 39, 39, 1),
                                  border: Border.all(
                                    color: Color.fromRGBO(39, 39, 39, 1),
                                    width: 1,
                                  ),
                                ))),
                      ],
                    ),
                    Padding(
                        padding:
                            EdgeInsets.fromLTRB(120.w, 45.w, 120.0.w, 0.0.w),
                        child: Container(
                          width: 135.0.w,
                          height: 17.0.w,
                          // color: Colors.red,
                          child: Text(
                            'Select the gender?',
                            textScaleFactor: 1,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 14.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(35.w, 21.w, 0.w, 0.w),
                          child: Container(
                            width: 80.w,
                            height: 76.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  22.5.w, 20.5.w, 22.5.w, 20.5.w),
                              child: Container(
                                height: 35.w,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/male.png'),
                                      fit: BoxFit.fitWidth),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.w, 21.w, 0.w, 0.w),
                          child: Container(
                            width: 80.w,
                            height: 76.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  22.5.w, 20.5.w, 22.5.w, 20.5.w),
                              child: Container(
                                height: 35.w,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/female.png'),
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.w, 21.w, 40.w, 0.w),
                          child: Container(
                            width: 80.w,
                            height: 76.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  22.5.w, 20.5.w, 22.5.w, 20.5.w),
                              child: Container(
                                height: 35.w,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/transgender.png'),
                                      fit: BoxFit.fitWidth),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(60.w, 6.w, 0.0.w, 0.0.w),
                          child: Container(
                            width: 30.0.w,
                            height: 15.0.w,
                            // color: Colors.yellow,
                            child: Text(
                              'Male',
                              // textScaleFactor: .90,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'MontserratMed',
                                  fontSize: 12.sp,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.w500,
                                  height: 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(73.w, 6.w, 0.0.w, 0.0.w),
                          child: Container(
                            width: 45.0.w,
                            height: 15.0.w,
                            // color: Colors.red,
                            child: Text(
                              'Female',
                              textScaleFactor: .98,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'MontserratMed',
                                  fontSize: 12.sp,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.w500,
                                  height: 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(49.w, 6.w, 0.0.w, 0.0.w),
                          child: Container(
                            width: 77.0.w,
                            height: 15.0.w,
                            // color: Colors.red,
                            child: Text(
                              'Transgender',
                              textScaleFactor: .98,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'MontserratMed',
                                  fontSize: 12.sp,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.w500,
                                  height: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(261.w, 64.0.w, 23.w, 0.0.w),
                    //   child: Container(
                    //     width: 91.w,
                    //     height: 36.w,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(8),
                    //         topRight: Radius.circular(8),
                    //         bottomLeft: Radius.circular(8),
                    //         bottomRight: Radius.circular(8),
                    //       ),
                    //       color: Color.fromRGBO(39, 39, 39, 1),
                    //     ),
                    //     child: Stack(
                    //       children: [
                    //         Positioned(
                    //           left: 16.w,
                    //           top: 9.w,
                    //           child: Container(
                    //             height: 18.w,
                    //             width: 37.w,
                    //             child: Center(
                    //               child: Text(
                    //                 'Next',
                    //                 textScaleFactor: 1,
                    //                 textAlign: TextAlign.left,
                    //                 style: TextStyle(
                    //                     color: Color.fromRGBO(255, 255, 255, 1),
                    //                     fontFamily: 'Montserrat',
                    //                     fontSize: 15,
                    //                     letterSpacing:
                    //                     0 /*percentages not used in flutter. defaulting to zero*/,
                    //                     fontWeight: FontWeight.normal,
                    //                     height: 1),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         Positioned(
                    //           left: 62.12.w,
                    //           top: 12.94.w,
                    //           child: Container(
                    //             height: 10.13.w,
                    //             width: 15.75.w,
                    //             decoration: BoxDecoration(
                    //               image: DecorationImage(
                    //                 image:
                    //                 AssetImage("assets/icons/bi_arrow-right.png"),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(35.w, 24.0.w, 35.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 305.w,
                        // color: Colors.red,
                        child: Text(
                          'Please upload your current measurement?',
                          textScaleFactor: .91.w,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'MontserratMed',
                              fontSize: 14.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(145.w, 15.0.w, 144.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 305.w,
                        // color: Colors.red,
                        child: Text(
                          'Upper Body',
                          textScaleFactor: .91.w,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'MontserratMed',
                              fontSize: 14.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(41.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 11.w,
                                  left: 47.w,
                                  right: 64.w,
                                  child: Container(
                                    width: 32.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Neck',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 37.w,
                                  left: 23.w,
                                  right: 41.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 46.w,
                                  left: 107.w,
                                  right: 24.w,
                                  bottom: 21.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(14.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 11.w,
                                  left: 34.w,
                                  right: 34.w,
                                  child: Container(
                                    width: 75.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Upper chest',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 37.w,
                                  left: 23.w,
                                  right: 41.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 46.w,
                                  left: 107.w,
                                  right: 24.w,
                                  bottom: 21.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(41.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 11.w,
                                  left: 31.w,
                                  right: 31.w,
                                  child: Container(
                                    width: 81.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Middle Chest',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 37.w,
                                  left: 23.w,
                                  right: 41.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 46.w,
                                  left: 107.w,
                                  right: 24.w,
                                  bottom: 21.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(14.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 11.w,
                                  left: 55.w,
                                  right: 55.w,
                                  child: Container(
                                    width: 33.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Arms',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 37.w,
                                  left: 23.w,
                                  right: 41.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    // child: Container(
                                    //   height: 17.w,
                                    //   width: 18.w,
                                    //   color: Colors.blue,
                                    //   child: Text('20',
                                    //     textScaleFactor: 2,
                                    //     textAlign: TextAlign.left, style: TextStyle(
                                    //       color: Color.fromRGBO(140, 140, 140, 1),
                                    //       fontFamily: 'Montserrat',
                                    //       fontSize: 14.sp,
                                    //       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    //       fontWeight: FontWeight.normal,
                                    //       height: 1
                                    //   ),),
                                    // ),
                                  ),
                                ),
                                Positioned(
                                  top: 46.w,
                                  left: 107.w,
                                  right: 24.w,
                                  bottom: 21.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/icons/info.png"))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(41.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 11.w,
                                  left: 55.w,
                                  right: 53.w,
                                  child: Container(
                                    width: 35.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Waist',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 37.w,
                                  left: 23.w,
                                  right: 41.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 46.w,
                                  left: 107.w,
                                  right: 24.w,
                                  bottom: 21.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(14.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 11.w,
                                  left: 29.w,
                                  right: 29.w,
                                  child: Container(
                                    width: 85.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Widest Waist',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 37.w,
                                  left: 23.w,
                                  right: 41.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    // child: Container(
                                    //   height: 17.w,
                                    //   width: 18.w,
                                    //   color: Colors.blue,
                                    //   child: Text('20',
                                    //     textScaleFactor: 2,
                                    //     textAlign: TextAlign.left, style: TextStyle(
                                    //       color: Color.fromRGBO(140, 140, 140, 1),
                                    //       fontFamily: 'Montserrat',
                                    //       fontSize: 14.sp,
                                    //       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    //       fontWeight: FontWeight.normal,
                                    //       height: 1
                                    //   ),),
                                    // ),
                                  ),
                                ),
                                Positioned(
                                  top: 46.w,
                                  left: 107.w,
                                  right: 24.w,
                                  bottom: 21.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/icons/info.png"))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(145.w, 15.0.w, 144.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 305.w,
                        // color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Lower Body',
                            textScaleFactor: .91.w,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 14.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(41.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10.w,
                                  left: 44.w,
                                  right: 44.w,
                                  child: Container(
                                    width: 55.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Buttocks',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 35.w,
                                  left: 22.w,
                                  right: 42.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 44.w,
                                  left: 107.w,
                                  right: 25.w,
                                  bottom: 23.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(14.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 13.w,
                                  left: 30.w,
                                  right: 30.w,
                                  child: Container(
                                    width: 83.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Upper Thighs',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 35.w,
                                  left: 22.w,
                                  right: 42.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 44.w,
                                  left: 107.w,
                                  right: 25.w,
                                  bottom: 23.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(41.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10.w,
                                  left: 27.w,
                                  right: 26.w,
                                  child: Container(
                                    width: 90.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Middle Thighs',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 35.w,
                                  left: 22.w,
                                  right: 42.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 44.w,
                                  left: 107.w,
                                  right: 25.w,
                                  bottom: 23.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(14.w, 11.w, 0.w, 0.w),
                          child: Container(
                            width: 143.w,
                            height: 79.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color.fromRGBO(39, 39, 39, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 12.w,
                                  left: 29.w,
                                  right: 29.w,
                                  child: Container(
                                    width: 83.w,
                                    height: 15.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        'Lower Thighs',
                                        textScaleFactor: 0.70.w,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 35.w,
                                  left: 22.w,
                                  right: 42.w,
                                  bottom: 12.w,
                                  child: Container(
                                    width: 79.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(39, 39, 39, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(39, 39, 39, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          9.0.w, 6.0.w, 0.0, 3.5.w),
                                      child: TextFormField(
                                        enabled: true,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                140, 140, 140, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.sp * 1.5,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w500,
                                            height: 1),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 44.w,
                                  left: 107.w,
                                  right: 25.w,
                                  bottom: 23.w,
                                  child: Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/icons/info.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(41.w, 11.w, 191.0.w, 0.w),
                      child: Container(
                        width: 143.w,
                        height: 79.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.transparent,
                          border: Border.all(
                            color: Color.fromRGBO(39, 39, 39, 1),
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 11.w,
                              left: 60.w,
                              right: 59.w,
                              child: Container(
                                width: 24.w,
                                height: 15.w,
                                // color: Colors.red,
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    'Calf',
                                    textScaleFactor: 0.70.w,
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.sp,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w500,
                                        height: 1),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 35.w,
                              left: 22.w,
                              right: 42.w,
                              bottom: 12.w,
                              child: Container(
                                width: 79.w,
                                height: 30.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3),
                                    bottomLeft: Radius.circular(3),
                                    bottomRight: Radius.circular(3),
                                  ),
                                  color: Color.fromRGBO(39, 39, 39, 1),
                                  border: Border.all(
                                    color: Color.fromRGBO(39, 39, 39, 1),
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      9.0.w, 6.0.w, 0.0, 3.5.w),
                                  child: TextFormField(
                                    enabled: true,
                                    style: TextStyle(
                                        color: Color.fromRGBO(140, 140, 140, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14.sp * 1.5,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w500,
                                        height: 1),
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 44.w,
                              left: 107.w,
                              right: 25.w,
                              bottom: 23.w,
                              child: Container(
                                width: 12.w,
                                height: 12.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/info.png"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(87.w, 24.0.w, 87.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 201.w,
                        // color: Colors.red,
                        child: Text(
                          'Do you have access to gym?',
                          textScaleFactor: .91.w,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'MontserratMed',
                              fontSize: 14.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              134.0.w, 36.0.w, 0.0.w, 0.0.w),
                          child: Row(
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.w,
                                // color: Colors.red,
                                child: Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.white),
                                  child: Radio(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: 'Y',
                                    groupValue: _radioValue,
                                    activeColor: Colors.green,
                                    onChanged: (Y) {
                                      setState(() {
                                        _radioValue = Y as String?;
                                        // print(choice.toString());
                                        access_type_controller.text =
                                            _radioValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Container(
                                    width: 24.w,
                                    height: 17.w,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Yes',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(38.0.w, 36.0.w, 0.0.w, 0.0.w),
                          child: Row(
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.w,
                                // color:Colors.red,
                                child: Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.white),
                                  child: Radio(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: 'N',
                                    groupValue: _radioValue,
                                    activeColor: Colors.red,
                                    onChanged: (N) {
                                      setState(() {
                                        _radioValue = N as String?;
                                        // print(choice.toString());
                                        access_type_controller.text =
                                            _radioValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Container(
                                    width: 24.w,
                                    height: 17.w,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'No',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    _radioValue == 'Y'
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    25.w, 45.0.w, 26.w, 0.0.w),
                                child: Container(
                                  height: 34.w,
                                  width: 324.w,
                                  // color: Colors.red,
                                  child: Text(
                                    'Do you want supplements as a part of your diet regime?',
                                    textScaleFactor: 1.w,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'MontserratMed',
                                        fontSize: 14.sp,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w500,
                                        height: 1),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        134.0.w, 36.0.w, 0.0.w, 0.0.w),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.w,
                                          // color: Colors.red,
                                          child: Theme(
                                            data: ThemeData(
                                                unselectedWidgetColor:
                                                    Colors.white),
                                            child: Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              value: 'Y',
                                              groupValue: _radioworkoutValue,
                                              activeColor: Colors.green,
                                              onChanged: (Y) {
                                                setState(() {
                                                  _radioworkoutValue =
                                                      Y as String?;
                                                  // print(choice.toString());
                                                  supplements_type_controller
                                                          .text =
                                                      _radioworkoutValue!;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.0),
                                          child: Container(
                                              width: 24.w,
                                              height: 17.w,
                                              child: FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  'Yes',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        38.0.w, 36.0.w, 0.0.w, 0.0.w),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.w,
                                          // color:Colors.red,
                                          child: Theme(
                                            data: ThemeData(
                                                unselectedWidgetColor:
                                                    Colors.white),
                                            child: Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              value: 'N',
                                              groupValue: _radioworkoutValue,
                                              activeColor: Colors.red,
                                              onChanged: (N) {
                                                setState(() {
                                                  _radioworkoutValue =
                                                      N as String?;
                                                  // print(choice.toString());
                                                  supplements_type_controller
                                                          .text =
                                                      _radioworkoutValue!;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.0),
                                          child: Container(
                                            width: 24.w,
                                            height: 17.w,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Text(
                                                'No',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              _radioworkoutValue == 'Y'
                                  ? Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              31.w, 37.0.w, 31.w, 0.0.w),
                                          child: Container(
                                            height: 17.w,
                                            width: 313.w,
                                            // color: Colors.red,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Text(
                                                'What time of the day do you like to workout',
                                                textScaleFactor: .91.w,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'MontserratMed',
                                                    fontSize: 14.sp,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              78.w, 31.0.w, 78.w, 0.0.w),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                morning = true;
                                                evening = false;
                                                afternoon = false;
                                                night = false;
                                              });
                                            },
                                            child: Container(
                                              height: 30.w,
                                              width: 219.w,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(2),
                                                  topRight: Radius.circular(2),
                                                  bottomLeft:
                                                      Radius.circular(2),
                                                  bottomRight:
                                                      Radius.circular(2),
                                                ),
                                                color: morning == true
                                                    ? Colors.red
                                                    : Color.fromRGBO(
                                                        39, 39, 39, 1),
                                                // border: Border.all(
                                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                                //   width: 1,
                                                // ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    79.w, 7.w, 79.w, 6.w),
                                                child: Container(
                                                  height: 17.w,
                                                  width: 61.w,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      'Morning',
                                                      textScaleFactor: 1,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 15,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              78.w, 20.0.w, 78.w, 0.0.w),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                morning = false;
                                                evening = false;
                                                afternoon = true;
                                                night = false;
                                              });
                                            },
                                            child: Container(
                                              height: 30.w,
                                              width: 219.w,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(2),
                                                  topRight: Radius.circular(2),
                                                  bottomLeft:
                                                      Radius.circular(2),
                                                  bottomRight:
                                                      Radius.circular(2),
                                                ),
                                                color: afternoon == true
                                                    ? Colors.red
                                                    : Color.fromRGBO(
                                                        39, 39, 39, 1),
                                                // border: Border.all(
                                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                                //   width: 1,
                                                // ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    74.w, 7.w, 73.w, 6.w),
                                                child: Container(
                                                  height: 17.w,
                                                  width: 72.w,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      'Afternoon',
                                                      textScaleFactor: 1,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 15,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              78.w, 20.0.w, 78.w, 0.0.w),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                morning = false;
                                                evening = true;
                                                afternoon = false;
                                                night = false;
                                              });
                                            },
                                            child: Container(
                                              height: 30.w,
                                              width: 219.w,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(2),
                                                  topRight: Radius.circular(2),
                                                  bottomLeft:
                                                      Radius.circular(2),
                                                  bottomRight:
                                                      Radius.circular(2),
                                                ),
                                                color: evening == true
                                                    ? Colors.red
                                                    : Color.fromRGBO(
                                                        39, 39, 39, 1),
                                                // border: Border.all(
                                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                                //   width: 1,
                                                // ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    80.w, 7.w, 80.w, 6.w),
                                                child: Container(
                                                  height: 17.w,
                                                  width: 49.w,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      'Evening',
                                                      textScaleFactor: 1,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 15,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              78.w, 20.0.w, 78.w, 0.0.w),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                morning = false;
                                                evening = false;
                                                afternoon = false;
                                                night = true;
                                              });
                                            },
                                            child: Container(
                                              height: 30.w,
                                              width: 219.w,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(2),
                                                  topRight: Radius.circular(2),
                                                  bottomLeft:
                                                      Radius.circular(2),
                                                  bottomRight:
                                                      Radius.circular(2),
                                                ),
                                                color: night == true
                                                    ? Colors.red
                                                    : Color.fromRGBO(
                                                        39, 39, 39, 1),
                                                // border: Border.all(
                                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                                //   width: 1,
                                                // ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    89.w, 7.w, 89.w, 6.w),
                                                child: Container(
                                                  height: 17.w,
                                                  width: 41.w,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      'Night',
                                                      textScaleFactor: 1,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 15,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                            ],
                          )
                        : Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    78.w, 31.0.w, 78.w, 0.0.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      morning = true;
                                      evening = false;
                                      afternoon = false;
                                      night = false;
                                    });
                                  },
                                  child: Container(
                                    height: 30.w,
                                    width: 219.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(2),
                                        topRight: Radius.circular(2),
                                        bottomLeft: Radius.circular(2),
                                        bottomRight: Radius.circular(2),
                                      ),
                                      color: morning == true
                                          ? Colors.red
                                          : Color.fromRGBO(39, 39, 39, 1),
                                      // border: Border.all(
                                      //   color: Color.fromRGBO(255, 255, 255, 1),
                                      //   width: 1,
                                      // ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          79.w, 7.w, 79.w, 6.w),
                                      child: Container(
                                        height: 17.w,
                                        width: 61.w,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Morning',
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    78.w, 20.0.w, 78.w, 0.0.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      morning = false;
                                      evening = false;
                                      afternoon = true;
                                      night = false;
                                    });
                                  },
                                  child: Container(
                                    height: 30.w,
                                    width: 219.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(2),
                                        topRight: Radius.circular(2),
                                        bottomLeft: Radius.circular(2),
                                        bottomRight: Radius.circular(2),
                                      ),
                                      color: afternoon == true
                                          ? Colors.red
                                          : Color.fromRGBO(39, 39, 39, 1),
                                      // border: Border.all(
                                      //   color: Color.fromRGBO(255, 255, 255, 1),
                                      //   width: 1,
                                      // ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          74.w, 7.w, 73.w, 6.w),
                                      child: Container(
                                        height: 17.w,
                                        width: 72.w,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Afternoon',
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    78.w, 20.0.w, 78.w, 0.0.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      morning = false;
                                      evening = true;
                                      afternoon = false;
                                      night = false;
                                    });
                                  },
                                  child: Container(
                                    height: 30.w,
                                    width: 219.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(2),
                                        topRight: Radius.circular(2),
                                        bottomLeft: Radius.circular(2),
                                        bottomRight: Radius.circular(2),
                                      ),
                                      color: evening == true
                                          ? Colors.red
                                          : Color.fromRGBO(39, 39, 39, 1),
                                      // border: Border.all(
                                      //   color: Color.fromRGBO(255, 255, 255, 1),
                                      //   width: 1,
                                      // ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          80.w, 7.w, 80.w, 6.w),
                                      child: Container(
                                        height: 17.w,
                                        width: 49.w,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Evening',
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    78.w, 20.0.w, 78.w, 0.0.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      morning = false;
                                      evening = false;
                                      afternoon = false;
                                      night = true;
                                    });
                                  },
                                  child: Container(
                                    height: 30.w,
                                    width: 219.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(2),
                                        topRight: Radius.circular(2),
                                        bottomLeft: Radius.circular(2),
                                        bottomRight: Radius.circular(2),
                                      ),
                                      color: night == true
                                          ? Colors.red
                                          : Color.fromRGBO(39, 39, 39, 1),
                                      // border: Border.all(
                                      //   color: Color.fromRGBO(255, 255, 255, 1),
                                      //   width: 1,
                                      // ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          89.w, 7.w, 89.w, 6.w),
                                      child: Container(
                                        height: 17.w,
                                        width: 41.w,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Night',
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(61.w, 24.0.w, 62.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 252.w,
                        // color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Do you have any of this conditions?',
                            textScaleFactor: .91.w,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 14.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(36.w, 41.0.w, 0.w, 0.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                pcos = !pcos;
                                noneofabove = false;
                                noneofabove = false;
                              });
                            },
                            child: Container(
                              height: 30.w,
                              width: 141.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(2),
                                  bottomRight: Radius.circular(2),
                                ),
                                color: pcos == true
                                    ? Colors.red
                                    : Color.fromRGBO(39, 39, 39, 1),
                                // border: Border.all(
                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                //   width: 1,
                                // ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(22.w, 7.w, 22.w, 6.w),
                                child: Container(
                                  height: 17.w,
                                  width: 97.w,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'PCOD / PCOS',
                                      textScaleFactor: 1,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: noneofabove != true
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(255, 255, 255, 1)
                                                  .withOpacity(.50),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(21.w, 41.0.w, 0.w, 0.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                hyper = !hyper;
                                noneofabove = false;
                              });
                            },
                            child: Container(
                              height: 30.w,
                              width: 141.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(2),
                                  bottomRight: Radius.circular(2),
                                ),
                                color: hyper == true
                                    ? Colors.red
                                    : Color.fromRGBO(39, 39, 39, 1),
                                // border: Border.all(
                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                //   width: 1,
                                // ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.w, 7.w, 24.w, 6.w),
                                child: Container(
                                  height: 17.w,
                                  width: 102.w,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Hyper Tension',
                                      textScaleFactor: 1,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: noneofabove != true
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(255, 255, 255, 1)
                                                  .withOpacity(.50),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(36.w, 35.0.w, 0.w, 0.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                thyroid = !thyroid;
                                noneofabove = false;
                              });
                            },
                            child: Container(
                              height: 30.w,
                              width: 141.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(2),
                                  bottomRight: Radius.circular(2),
                                ),
                                color: thyroid == true
                                    ? Colors.red
                                    : Color.fromRGBO(39, 39, 39, 1),
                                // border: Border.all(
                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                //   width: 1,
                                // ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(43.w, 7.w, 44.w, 6.w),
                                child: Container(
                                  height: 17.w,
                                  width: 54.w,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Thyroid',
                                      textScaleFactor: 1,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: noneofabove != true
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(255, 255, 255, 1)
                                                  .withOpacity(.50),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(21.w, 35.0.w, 0.w, 0.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                diabetes = !diabetes;
                                noneofabove = false;
                              });
                            },
                            child: Container(
                              height: 30.w,
                              width: 141.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(2),
                                  bottomRight: Radius.circular(2),
                                ),
                                color: diabetes == true
                                    ? Colors.red
                                    : Color.fromRGBO(39, 39, 39, 1),
                                // border: Border.all(
                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                //   width: 1,
                                // ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(38.w, 7.w, 39.w, 6.w),
                                child: Container(
                                  height: 17.w,
                                  width: 64.w,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Diabetes',
                                      textScaleFactor: 1,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: noneofabove != true
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(255, 255, 255, 1)
                                                  .withOpacity(.50),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(53.w, 40.w, 53.w, 6.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            // morning = false;
                            // evening = false;
                            // afternoon = true;
                            // night = false;
                          });
                        },
                        child: Container(
                          height: 59.w,
                          width: 141.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(2),
                            ),
                            color: Color.fromRGBO(39, 39, 39, 1),
                            // border: Border.all(
                            //   color: Color.fromRGBO(255, 255, 255, 1),
                            //   width: 1,
                            // ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8.w, 7.w, 8.w, 6.w),
                            child: Container(
                              height: 38.w,
                              width: 253.w,
                              // color:Colors.red,
                              child: Center(
                                child: Text(
                                  'Under any Anti Anxiety medication or Psychological support',
                                  textScaleFactor: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: noneofabove != true
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(255, 255, 255, 1)
                                              .withOpacity(.50),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(36.w, 35.0.w, 0.w, 0.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                heart = !heart;
                                noneofabove = false;
                              });
                            },
                            child: Container(
                              height: 30.w,
                              width: 141.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(2),
                                  bottomRight: Radius.circular(2),
                                ),
                                color: heart == true
                                    ? Colors.red
                                    : Color.fromRGBO(39, 39, 39, 1),
                                // border: Border.all(
                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                //   width: 1,
                                // ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(25.w, 7.w, 25.w, 6.w),
                                child: Container(
                                  height: 17.w,
                                  width: 141.w,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Heart Issues',
                                      textScaleFactor: 1,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: noneofabove != true
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(255, 255, 255, 1)
                                                  .withOpacity(.50),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(21.w, 35.0.w, 0.w, 0.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                renal = !renal;
                                noneofabove = false;
                              });
                            },
                            child: Container(
                              height: 30.w,
                              width: 141.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(2),
                                  bottomRight: Radius.circular(2),
                                ),
                                color: renal == true
                                    ? Colors.red
                                    : Color.fromRGBO(39, 39, 39, 1),
                                // border: Border.all(
                                //   color: Color.fromRGBO(255, 255, 255, 1),
                                //   width: 1,
                                // ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(22.w, 7.w, 23.w, 6.w),
                                child: Container(
                                  height: 17.w,
                                  width: 141.w,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Renal Issues',
                                      textScaleFactor: 1,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: noneofabove != true
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(255, 255, 255, 1)
                                                  .withOpacity(.50),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(36.w, 35.0.w, 36.w, 0.0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            noneofabove = !noneofabove;
                            pcos = false;
                            hyper = false;
                            thyroid = false;
                            diabetes = false;
                            heart = false;
                            renal = false;
                          });
                        },
                        child: Container(
                          height: 30.w,
                          width: 141.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(2),
                            ),
                            color: noneofabove == true
                                ? Colors.red
                                : Color.fromRGBO(39, 39, 39, 1),
                            // border: Border.all(
                            //   color: Color.fromRGBO(255, 255, 255, 1),
                            //   width: 1,
                            // ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(86.w, 7.w, 86.w, 6.w),
                            child: Container(
                              height: 17.w,
                              width: 131.w,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'None of the above',
                                  textScaleFactor: 1,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(69.w, 24.0.w, 68.w, 0.0.w),
                      child: Container(
                        height: 17.w,
                        width: 252.w,
                        // color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Please upload your current photo',
                            textScaleFactor: .91.w,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 14.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(44.w, 30.w, 44.w, 0.w),
                      child: Container(
                        width: 287.w,
                        height: 63.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(
                                    0, 0, 0, 0.10000000149011612),
                                offset: Offset(3, 4),
                                blurRadius: 8)
                          ],
                          color: Color.fromRGBO(39, 39, 39, 1),
                          border: Border.all(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            width: .20,
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(9.w, 9.w, 0.25.w, 9.w),
                              child: Container(
                                height: 45.0.w,
                                width: 250.75.w,
                                // color:Colors.red,
                                child: Text(
                                  'Please wear tight fitting clothes and check the sample position below for progress photos.',
                                  textScaleFactor: 1,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1.40),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(2.w, 25.w, 0.w, 26.w),
                              child: Container(
                                height: 12.0.w,
                                width: 12.0.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/info.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(36.w, 30.w, 0.w, 0.w),
                          child: Container(
                            height: 70.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/frount.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 30.w, 0.w, 0.w),
                          child: Container(
                            height: 70.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/side.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 30.w, 0.w, 0.w),
                          child: Container(
                            height: 70.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/back.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 30.w, 0.w, 0.w),
                          child: Container(
                            height: 70.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/angular.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(36.w, 22.w, 0.w, 0.w),
                          child: Container(
                            height: 93.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(255, 170, 0, 1),
                                width: 1,
                              ),
                              // image: DecorationImage(
                              //     image: AssetImage('assets/images/frount.png'),
                              //     fit: BoxFit.contain
                              // ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  19.w, 31.33.w, 20.33.w, 33.67.w),
                              child: Container(
                                width: 30.67.w,
                                height: 28.0.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/upload.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 22.w, 0.w, 0.w),
                          child: Container(
                            height: 93.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(255, 170, 0, 1),
                                width: 1,
                              ),
                              // image: DecorationImage(
                              //     image: AssetImage('assets/images/frount.png'),
                              //     fit: BoxFit.contain
                              // ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  19.w, 31.33.w, 20.33.w, 33.67.w),
                              child: Container(
                                width: 30.67.w,
                                height: 28.0.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/upload.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 22.w, 0.w, 0.w),
                          child: Container(
                            height: 93.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(255, 170, 0, 1),
                                width: 1,
                              ),
                              // image: DecorationImage(
                              //     image: AssetImage('assets/images/frount.png'),
                              //     fit: BoxFit.contain
                              // ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  19.w, 31.33.w, 20.33.w, 33.67.w),
                              child: Container(
                                width: 30.67.w,
                                height: 28.0.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/upload.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 22.w, 0.w, 0.w),
                          child: Container(
                            height: 93.0.w,
                            width: 70.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black,
                              border: Border.all(
                                color: Color.fromRGBO(255, 170, 0, 1),
                                width: 1,
                              ),
                              // image: DecorationImage(
                              //     image: AssetImage('assets/images/frount.png'),
                              //     fit: BoxFit.contain
                              // ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  19.w, 31.33.w, 20.33.w, 33.67.w),
                              child: Container(
                                width: 30.67.w,
                                height: 28.0.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/upload.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(52.w, 9.w, 0.w, 0.w),
                          child: Container(
                              height: 17.0.w,
                              width: 39.0.w,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Front',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(39.w, 9.w, 0.w, 0.w),
                          child: Container(
                              height: 17.0.w,
                              width: 31.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Side',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(47.w, 9.w, 0.w, 0.w),
                          child: Container(
                              height: 17.0.w,
                              width: 36.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Back',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(33.w, 9.w, 0.w, 0.w),
                          child: Container(
                              height: 17.0.w,
                              width: 57.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Angular',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.sp,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(67.w, 24.0.w, 54.w, 0.0.w),
                      child: Container(
                        height: 34.w,
                        width: 254.w,
                        // color: Colors.red,
                        child: Text(
                          'Almost there. Time to talk food What is your preferred eating style?',
                          textScaleFactor: .91.w,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'MontserratMed',
                              fontSize: 14.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w500,
                              height: 1.1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 36.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            vegan = !vegan;
                            Vegetarian = false;
                            nonVegetarian = false;
                            Eggetetian = false;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 67.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: vegan == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 14.w,
                                left: 9.w,
                                bottom: 1.16.w,
                                child: Container(
                                  width: 51.835445404052734.w,
                                  height: 51.835445404052734.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/frutes.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 39.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Vegan',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 35.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 164.0.w,
                                    height: 20.0.w,
                                    // color: Colors.red,
                                    child: Text(
                                      'All plant - based foods. No animal products of any kind.',
                                      textScaleFactor: 1.15,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'MontserratReg',
                                          fontSize: 8.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 13.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            vegan = false;
                            Vegetarian = !Vegetarian;
                            nonVegetarian = false;
                            Eggetetian = false;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 67.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Vegetarian == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 14.w,
                                left: 9.w,
                                bottom: 1.16.w,
                                child: Container(
                                  width: 51.835445404052734.w,
                                  height: 51.835445404052734.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/frutes.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 67.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Vegetarian',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 35.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 164.0.w,
                                    height: 20.0.w,
                                    // color: Colors.red,
                                    child: Text(
                                      'A plant - based diet plus small amounts dairy.',
                                      textScaleFactor: 1.15,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'MontserratReg',
                                          fontSize: 8.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 13.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            vegan = false;
                            Vegetarian = false;
                            nonVegetarian = !nonVegetarian;
                            Eggetetian = false;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 67.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: nonVegetarian == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 14.w,
                                left: 9.w,
                                bottom: 1.16.w,
                                child: Container(
                                  width: 51.835445404052734.w,
                                  height: 51.835445404052734.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/frutes.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 96.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Non Vegetarian',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 35.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 164.0.w,
                                    height: 20.0.w,
                                    // color: Colors.red,
                                    child: Text(
                                      'A plant-based diet, plus small amounts dairy',
                                      textScaleFactor: 1.15,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'MontserratReg',
                                          fontSize: 8.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 13.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            vegan = false;
                            Vegetarian = false;
                            nonVegetarian = false;
                            Eggetetian = !Eggetetian;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 67.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Eggetetian == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 14.w,
                                left: 9.w,
                                bottom: 1.16.w,
                                child: Container(
                                  width: 51.835445404052734.w,
                                  height: 51.835445404052734.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/frutes.png'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 68.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Eggeterian',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 40.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 164.0.w,
                                    height: 10.0.w,
                                    // color: Colors.red,
                                    child: Text(
                                      'A plant - based diet plus eggs',
                                      textScaleFactor: 1.15,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'MontserratReg',
                                          fontSize: 8.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(56.w, 24.0.w, 47.w, 0.0.w),
                      child: Container(
                        height: 34.w,
                        width: 254.w,
                        // color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Now tell me what you want to achieve',
                            textScaleFactor: .91.w,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 14.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1.1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(115.w, 7.0.w, 126.w, 0.0.w),
                      child: Container(
                        height: 34.w,
                        width: 134.w,
                        // color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'What is your Goal?',
                            textScaleFactor: .91.w,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 14.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1.1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 36.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            fatloss = !fatloss;
                            bodyrecomposition = false;
                            weightgain = false;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 84.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: fatloss == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 18.w,
                                left: 17.78.w,
                                bottom: 17.46.w,
                                child: Container(
                                  width: 45.49.w,
                                  height: 48.54.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/fatloss.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                top: 13.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 50.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Fat Loss',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 38.w,
                                left: 78.0.w,
                                child: Container(
                                  width: 123.0.w,
                                  height: 10.0.w,
                                  // color: Colors.red,
                                  child: Text(
                                    'You want to lose 5 kgs or more.',
                                    textScaleFactor: 1.15,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'MontserratReg',
                                        fontSize: 8.sp,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 248.w,
                                right: 12.w,
                                bottom: 60.w,
                                child: Container(
                                  width: 12.w,
                                  height: 12.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/info.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 248.w,
                                right: 12.w,
                                bottom: 60.w,
                                child: Container(
                                  width: 12.w,
                                  height: 12.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/info.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 16.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Vegetarian = false;
                            bodyrecomposition = !bodyrecomposition;
                            weightgain = false;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 84.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: bodyrecomposition == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 18.w,
                                left: 17.78.w,
                                bottom: 17.46.w,
                                child: Container(
                                  width: 45.49.w,
                                  height: 48.54.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/bodyrecomposition.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                top: 13.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 128.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Body Recomposition',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 38.w,
                                left: 78.0.w,
                                child: Container(
                                  width: 140.0.w,
                                  height: 30.0.w,
                                  // color: Colors.red,
                                  child: Text(
                                    'You want to improve your nutrition and overall health while losing less than 5kgs',
                                    textScaleFactor: 1.15,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'MontserratReg',
                                        fontSize: 8.sp,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 248.w,
                                right: 12.w,
                                bottom: 60.w,
                                child: Container(
                                  width: 12.w,
                                  height: 12.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/info.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(54.w, 16.w, 49.w, 0.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Vegetarian = false;
                            nonVegetarian = false;
                            weightgain = !weightgain;
                          });
                        },
                        child: Container(
                          width: 272.w,
                          height: 84.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: weightgain == true
                                ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 1),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 14.w,
                                left: 13.0.w,
                                bottom: 15.0.w,
                                child: Container(
                                  width: 45.49.w,
                                  height: 48.54.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/waitgain.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                top: 13.w,
                                left: 78.0.w,
                                child: Container(
                                    width: 77.0.w,
                                    height: 15.0.w,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Weight Gain',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'MontserratMed',
                                            fontSize: 12.sp,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ),
                              Positioned(
                                top: 38.w,
                                left: 78.0.w,
                                child: Container(
                                  width: 139.0.w,
                                  height: 20.0.w,
                                  // color: Colors.red,
                                  child: Text(
                                    'You want to bulid lean muscle and increase your body weight',
                                    textScaleFactor: 1.15,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'MontserratReg',
                                        fontSize: 8.sp,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 12.w,
                                left: 248.w,
                                right: 12.w,
                                bottom: 60.w,
                                child: Container(
                                  width: 12.w,
                                  height: 12.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/info.png"),
                                    ),
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
              ],
              onPageChanged: _onPageViewChange,
            ),
          ),

          // Spacer(),
          currentpage != 6
              ? Padding(
                  padding: EdgeInsets.fromLTRB(261.w, 0.0.w, 23.w, 61.0.w),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      });
                    },
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
                            left: 16.w,
                            top: 9.w,
                            child: Container(
                              height: 18.w,
                              width: 37.w,
                              child: Center(
                                child: Text(
                                  'Next',
                                  textScaleFactor: 1,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 62.12.w,
                            top: 12.94.w,
                            child: Container(
                              height: 10.13.w,
                              width: 15.75.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/bi_arrow-right.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.fromLTRB(28.w, 0.0.w, 23.w, 61.0.w),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => DashboardScreen()
                        )
                        );
                      });
                    },
                    child: Container(
                      width: 329.w,
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
                      child: Padding(
                        padding:
                            EdgeInsets.fromLTRB(66.0.w, 9.0.w, 66.0.w, 9.0.w),
                        child: Container(
                            height: 18.w,
                            width: 197.w,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'Let’s Get Started Champ!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.sp,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w700,
                                    height: 1),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
