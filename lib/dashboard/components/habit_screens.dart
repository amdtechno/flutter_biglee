import 'package:flutter/gestures.dart';
import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/dashboard/dashboard_screens.dart';

class HabitsScreens extends StatefulWidget {
  const HabitsScreens({Key? key}) : super(key: key);

  @override
  State<HabitsScreens> createState() => _HabitsScreensState();
}

class _HabitsScreensState extends State<HabitsScreens> {
  // createAlertDialog(BuildContext context) {
  //   return AlertDialog(
  //     contentPadding: ,
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 64.0.w,
          flexibleSpace: CustomAppBar(
            title: 'Program name',
            leadingicon: 'assets/icons/leftarrow.png',
            press: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashboardScreen(),
              ),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(23.0.w, 38.34.w, 98.0.w, 0.0.w),
              child: Text(
                'Week 4 - Day 6 (December 22)',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 16.w,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(23.0.w, 12.34.w, 223.0.w, 0.0.w),
              child: Text(
                'Habit of the Week',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'MontserratMed',
                    fontSize: 14.w,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(23.0.w, 28.0.w, 23.0.w, 0.0.w),
              child: Container(
                width: 329.0.w,
                height: 244.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color.fromRGBO(39, 39, 39, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14.0.w, 28.0.w, 13.0.w, 28.0.w),
                  child: Container(
                    height: 188.0.w,
                    width: 302.0.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/waterwithglass.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(23.0.w, 17.34.w, 69.0.w, 0.0.w),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text:
                        'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'MontserratMed',
                        fontSize: 12.w,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w400,
                        height: 1),
                    children: [
                      TextSpan(
                        text: 'Read More',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Readmore');
                            openDialog();
                          },
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratMed',
                            fontSize: 12.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(23.0.w, 24.0.w, 23.0.w, 0.0.w),
              child: Container(
                width: 329.0.w,
                height: 112.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(3),
                    bottomLeft: Radius.circular(3),
                    bottomRight: Radius.circular(3),
                  ),
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    width: .50,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(10.0.w, 0.0.w, 0.0.w, 86.0.w),
                      child: Container(
                        height: 16.0.w,
                        width: 16.0.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icons/edit.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(10.0.w, 10.0.w, 10.0.w, 86.0.w),
                      child: Container(
                        width: 275.0.w,
                        child: TextFormField(
                          enabled: true,
                          style: TextStyle(
                              color: Color.fromRGBO(140, 140, 140, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 14.w,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w500,
                              height: 1),
                          decoration: InputDecoration(
                              hintText: 'Notes about Habit',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(140, 140, 140, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.w,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.w500,
                                  height: 1),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(150.0.w, 26.0.w, 150.0.w, 42.0.w),
              child: Container(
                width: 75.w,
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
                  padding: EdgeInsets.fromLTRB(
                    16.0.w,
                    9.0.w,
                    16.0.w,
                    9.0.w,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Close',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 15.w,
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
          ],
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => Material(
          type: MaterialType.transparency,
          child: Padding(
            padding: EdgeInsets.fromLTRB(53.0.w, 67.0.w, 53.0.w, 83.0.w),
            child: Container(
              width: 269.0.w,
              height: 568.0.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Color.fromRGBO(39, 39, 39, 1),
                border: Border.all(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: ListView(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(71.0.w, 26.0.w, 64.0.w, 0.0.w),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Habit of the Week',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.sp,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3.w),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(16.0.w, 34.0.w, 16.0.w, 0.0.w),
                          child: Text(
                            'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratMed',
                                fontSize: 12.w,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1.3.w),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(16.0.w, 25.0.w, 16.0.w, 0.0.w),
                          child: Text(
                            'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratReg',
                                fontSize: 12.w,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1.3.w),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(16.0.w, 25.0.w, 16.0.w, 0.0.w),
                          child: Text(
                            'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratReg',
                                fontSize: 12.w,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1.3.w),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(16.0.w, 25.0.w, 16.0.w, 0.0.w),
                          child: Text(
                            'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratReg',
                                fontSize: 12.w,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1.3.w),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(16.0.w, 25.0.w, 16.0.w, 0.0.w),
                          child: Text(
                            'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'MontserratReg',
                                fontSize: 12.w,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w400,
                                height: 1.3.w),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(97.0.w, 0.0.w, 97.0.w, 29.0.w,),
                    child: Container(
                      width: 75.w,
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
                        padding: EdgeInsets.fromLTRB(
                          16.0.w,
                          9.0.w,
                          16.0.w,
                          9.0.w,
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Close',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.w,
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
                ],
              ),
            ),
          ),
        ),
      );
}
