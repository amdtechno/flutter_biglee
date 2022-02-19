import 'package:siam_biglee/const/packages.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(375, 750),
      context: context,
      minTextAdapt: true,
      orientation: Orientation.portrait,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 23.0.w, top: 32.0.w),
          child: Container(
            height: 15.0.w,
            width: 222.0.w,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Uploaded Date - Last Uploaded date',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 23.0.w, 0.0.w, 23.0.w),
          child: Container(
            width: 329.0.w,
            height: 255.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromRGBO(0, 0, 0, 1),
              border: Border.all(
                color: Color.fromRGBO(255, 255, 255, 1),
                width: 1,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 27.0.w,
                  right: 217.0.w,
                  top: 10.0.w,
                  child: Container(
                    width: 85.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Upper body',
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
                  ),
                ),

                // Start of Upper Body Heading

                Positioned(
                  left: 27.0.w,
                  right: 276.0.w,
                  top: 47.0.w,
                  child: Container(
                    width: 26.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Neck',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 65.0.w,
                  right: 200.0.w,
                  top: 47.0.w,
                  child: Container(
                    width: 64.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Upper Chest',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 141.0.w,
                  right: 121.0.w,
                  top: 47.0.w,
                  child: Container(
                    width: 67.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Middle Chest',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 220.0.w,
                  right: 82.0.w,
                  top: 47.0.w,
                  child: Container(
                    width: 27.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Arms',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 259.0.w,
                  right: 41.0.w,
                  top: 47.0.w,
                  child: Container(
                    width: 29.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Waist',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                // End of Upper Body Heading

                // Start of Upper Body Heading Value

                Positioned(
                  left: 36.0.w,
                  right: 282.0.w,
                  top: 69.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 91.0.w,
                  right: 227.0.w,
                  top: 69.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 169.0.w,
                  right: 149.0.w,
                  top: 69.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 229.0.w,
                  right: 89.0.w,
                  top: 69.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 268.0.w,
                  right: 50.0.w,
                  top: 69.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                // End of Upper Body Heading Value

                Positioned(
                  left: 27.0.w,
                  right: 218.0.w,
                  top: 101.0.w,
                  child: Container(
                    width: 85.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Lover body',
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
                  ),
                ),

                // Start of Lower Body Heading

                Positioned(
                  left: 27.0.w,
                  right: 263.0.w,
                  top: 140.0.w,
                  child: Container(
                    width: 39.0.w,
                    height: 24.0.w,
                    child: Text(
                      'Widest Waist',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 10.w,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
                Positioned(
                  left: 78.0.w,
                  right: 206.0.w,
                  top: 146.0.w,
                  child: Container(
                    width: 45.0.w,
                    height: 12.0.w,
                    child: Text(
                      'Buttocks',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 10.w,
                          fontStyle: FontStyle.normal,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
                Positioned(
                  left: 139.0.w,
                  right: 155.0.w,
                  top: 140.0.w,
                  child: Container(
                    width: 35.0.w,
                    height: 24.0.w,
                    child: Text(
                      'Upper Thighs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 10.w,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
                Positioned(
                  left: 186.0.w,
                  right: 105.0.w,
                  top: 140.0.w,
                  child: Container(
                    width: 38.0.w,
                    height: 24.0.w,
                    child: Text(
                      'Middle Thighs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 10.w,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
                Positioned(
                  left: 236.0.w,
                  right: 59.0.w,
                  top: 140.0.w,
                  child: Container(
                    width: 38.0.w,
                    height: 24.0.w,
                    child: Text(
                      'Lower Thighs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 10.w,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
                Positioned(
                  left: 280.0.w,
                  right: 25.0.w,
                  top: 146.0.w,
                  child: Container(
                    width: 21.0.w,
                    height: 12.0.w,
                    child: Text(
                      'Calf',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 10.w,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),

                // End of Lower Body Heading

                // Start of Lower Body Heading Value

                Positioned(
                  left: 41.0.w,
                  right: 277.0.w,
                  top: 168.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 95.0.w,
                  right: 223.0.w,
                  top: 168.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 151.0.w,
                  right: 167.0.w,
                  top: 168.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 199.0.w,
                  right: 119.0.w,
                  top: 168.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 247.0.w,
                  right: 71.0.w,
                  top: 168.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 287.0.w,
                  right: 31.0.w,
                  top: 168.0.w,
                  child: Container(
                    width: 11.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '0”',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 10.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                // End of Lower Body Heading Value

                Positioned(
                  left: 27.0.w,
                  right: 249.0.w,
                  top: 206.0.w,
                  child: Container(
                    width: 53.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Weight',
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
                  ),
                ),
                Positioned(
                  left: 39.0.w,
                  right: 261.0.w,
                  top: 233.0.w,
                  child: Container(
                    width: 29.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '67 Kg',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            fontFamily: 'MontserratMed',
                            fontSize: 14.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(24.0.w, 30.0.w, 0.0.w, 0.0.w),
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
                      color: Color.fromRGBO(0, 0, 0, 1),
                      border: Border.all(
                        color: Color.fromRGBO(255, 170, 0, 1),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0.w, 30.0.w, 15.0.w, 28.0.w),
                      child: Container(
                        height: 35.0.w,
                        width: 40.0.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/upload.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40.0.w, 9.0.w, 0.0.w, 0.0.w),
                  child: Container(
                    height: 17.0.w,
                    width: 39.0.w,
                    child: Text('Front', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'MontserratReg',
                        fontSize: 14.w,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w400,
                        height: 1.2
                    ),)
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 30.0.w, 0.0.w, 0.0.w),
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
                      color: Color.fromRGBO(0, 0, 0, 1),
                      border: Border.all(
                        color: Color.fromRGBO(255, 170, 0, 1),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0.w, 30.0.w, 15.0.w, 28.0.w),
                      child: Container(
                        height: 35.0.w,
                        width: 40.0.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/upload.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(31.0.w, 9.0.w, 0.0.w, 0.0.w),
                  child: Container(
                      height: 17.0.w,
                      width: 31.0.w,
                      child: Text('Side', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 14.w,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2
                      ),)
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 30.0.w, 0.0.w, 0.0.w),
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
                      color: Color.fromRGBO(0, 0, 0, 1),
                      border: Border.all(
                        color: Color.fromRGBO(255, 170, 0, 1),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0.w, 30.0.w, 15.0.w, 28.0.w),
                      child: Container(
                        height: 35.0.w,
                        width: 40.0.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/upload.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(39.0.w, 9.0.w, 0.0.w, 0.0.w),
                  child: Container(
                      height: 17.0.w,
                      width: 36.0.w,
                      child: Text('Back', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 14.w,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2
                      ),)
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 30.0.w, 0.0.w, 0.0.w),
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
                      color: Color.fromRGBO(0, 0, 0, 1),
                      border: Border.all(
                        color: Color.fromRGBO(255, 170, 0, 1),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0.w, 30.0.w, 15.0.w, 28.0.w),
                      child: Container(
                        height: 35.0.w,
                        width: 40.0.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/upload.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25.0.w, 9.0.w, 0.0.w, 0.0.w),
                  child: Container(
                      height: 17.0.w,
                      width: 57.0.w,
                      child: Text('Angular', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 14.w,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2
                      ),)
                  ),
                ),
              ],
            ),
          ],
        ),
        // Row(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(40.0.w, 9.0.w, 0.0.w, 0.0.w),
        //       child: Container(
        //           height: 17.0.w,
        //           width: 39.0.w,
        //           child: Text('Front', textAlign: TextAlign.left, style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontFamily: 'MontserratReg',
        //               fontSize: 14.w,
        //               letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        //               fontWeight: FontWeight.w400,
        //               height: 1.2
        //           ),)
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(47.0.w, 9.0.w, 0.0.w, 0.0.w),
        //       child: Container(
        //           height: 17.0.w,
        //           width: 31.0.w,
        //           child: Text('Side', textAlign: TextAlign.left, style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontFamily: 'MontserratReg',
        //               fontSize: 14.w,
        //               letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        //               fontWeight: FontWeight.w400,
        //               height: 1.2
        //           ),)
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(55.0.w, 9.0.w, 0.0.w, 0.0.w),
        //       child: Container(
        //           height: 17.0.w,
        //           width: 36.0.w,
        //           child: Text('Back', textAlign: TextAlign.left, style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontFamily: 'MontserratReg',
        //               fontSize: 14.w,
        //               letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        //               fontWeight: FontWeight.w400,
        //               height: 1.2
        //           ),)
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(41.0.w, 9.0.w, 0.0.w, 0.0.w),
        //       child: Container(
        //           height: 17.0.w,
        //           width: 57.0.w,
        //           child: Text('Angular', textAlign: TextAlign.left, style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontFamily: 'MontserratReg',
        //               fontSize: 14.w,
        //               letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        //               fontWeight: FontWeight.w400,
        //               height: 1.2
        //           ),)
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
