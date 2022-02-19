import 'package:siam_biglee/const/packages.dart';
import 'dart:math' as math;

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  bool tracker = false;
  int? bottomindex;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(375, 1643),
      context: context,
      minTextAdapt: true,
      orientation: Orientation.portrait,
    );
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 36.34.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.w,
            height: 390.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/dashboardimage.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(0, 0, 0, 0.6), BlendMode.plus),
                  opacity: .70),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                    offset: Offset(3, 4),
                    blurRadius: 8)
              ],
              color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
              border: Border.all(
                color: Color.fromRGBO(39, 39, 39, 1),
                width: 1,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 127.0.w,
                  top: 11.0.w,
                  child: Container(
                    width: 67.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'TODAY',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 117.0.w,
                  top: 36.0.w,
                  child: Container(
                    width: 87.w,
                    height: 15.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Week 1 - Day 3',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratReg',
                            fontSize: 12.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 12.34.w,
                  top: 23.34.w,
                  child: Container(
                    height: 13.3.w,
                    width: 7.66.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/rightarrow1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 74.0.w,
                  left: 23.0.w,
                  child: Container(
                    width: 142.0.w,
                    height: 81.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color.fromRGBO(0, 0, 0, 0.3400000214576721),
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10.97.w,
                          top: 10.36.w,
                          bottom: 15.85.w,
                          child: Transform.rotate(
                            angle: 80.999676435765124 * (math.pi / 90),
                            child: Container(
                              // color: Colors.red,
                              width: 41.52.w,
                              height: 36.33.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(
                                      'assets/images/workout.png',
                                    ).image,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 21.63.w,
                          left: 70.0.w,
                          // right: 10.0.w,
                          child: Container(
                            height: 17.0.w,
                            width: 62.0.w,
                            // color: Colors.red,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'Workout',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 14.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 43.0.w,
                          // left: 73.0.w,
                          right: 44.0.w,
                          child: Container(
                            height: 17.0.w,
                            width: 25.0.w,
                            // color: Colors.red,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                '0 %',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 14.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 74.0.w,
                  left: 172.0.w,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        bottomindex = 3;
                      });
                    },
                    child: Container(
                      width: 142.0.w,
                      height: 81.0.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.3400000214576721),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10.97.w,
                            top: 10.36.w,
                            bottom: 15.85.w,
                            child: Container(
                              // color: Colors.red,
                              width: 40.0.w,
                              height: 40.0.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(
                                      'assets/images/meal.png',
                                    ).image,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 21.00.w,
                            left: 70.0.w,
                            // right: 10.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 34.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Meal',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 43.0.w,
                            // left: 73.0.w,
                            right: 43.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 26.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  '0 /6',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 174.0.w,
                  left: 23.0.w,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HabitsScreens(),
                        ),
                      );
                    },
                    child: Container(
                      width: 142.0.w,
                      height: 81.0.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.3400000214576721),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7.58.w,
                            top: 19.36.w,
                            bottom: 21.0.w,
                            child: Container(
                              // color: Colors.red,
                              width: 52.84.w,
                              height: 41.0.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(
                                      'assets/images/habits.png',
                                    ).image,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 21.00.w,
                            left: 70.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 46.0.w,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Habits',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 43.0.w,
                            right: 10.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 61.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Pending',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 174.0.w,
                  left: 172.0.w,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StepCountScreens(),
                        ),
                      );
                    },
                    child: Container(
                      width: 142.0.w,
                      height: 81.0.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.3400000214576721),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7.58.w,
                            top: 19.36.w,
                            bottom: 21.0.w,
                            child: Container(
                              // color: Colors.red,
                              width: 52.84.w,
                              height: 41.0.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(
                                      'assets/images/habits.png',
                                    ).image,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 21.0.w,
                            left: 70.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 39.0.w,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Steps',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 43.0.w,
                            right: 59.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 10.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  '0',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 274.0.w,
                  left: 23.0.w,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WaterIntakeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 142.0.w,
                      height: 81.0.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(0, 0, 0, 0.3400000214576721),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 7.58.w,
                            top: 19.36.w,
                            bottom: 21.0.w,
                            child: Container(
                              // color: Colors.red,
                              width: 52.84.w,
                              height: 41.0.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(
                                      'assets/images/habits.png',
                                    ).image,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 21.0.w,
                            left: 70.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 43.0.w,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Water',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 43.0.w,
                            right: 44.0.w,
                            child: Container(
                              height: 17.0.w,
                              width: 25.0.w,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  '0 %',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 14.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 274.0.w,
                  left: 172.0.w,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProgressTrackerScreens(),
                        ),
                      );
                      setState(() {
                        tracker = !tracker;
                      });
                    },
                    child: Container(
                      width: 142.0.w,
                      height: 81.0.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: tracker == true
                            ? Color.fromRGBO(0, 0, 0, 0.3400000214576721)
                            : Color.fromRGBO(232, 56, 56, 0.63),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 5.88.w,
                            top: 14.0.w,
                            bottom: 12.96.w,
                            child: Container(
                              width: 59.04.w,
                              height: 59.24.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/habits.png',
                                    ),
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 21.0.w,
                            left: 70.0.w,
                            child: Container(
                              height: 34.0.w,
                              width: 62.0.w,
                              child: Text(
                                'ProgressTracker',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'MontserratReg',
                                  fontSize: 14.w,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.w400,
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
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 30.0.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.w,
            height: 355.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.transparent,
              border: Border.all(
                color: Color(0X4DFFFFFF),
                width: .5,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 21.0.w,
                  left: 50.0.w,
                  child: Container(
                    height: 44.w,
                    width: 227.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Top 3\n Performers of the Week',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 101.0.w,
                  left: 48.0.w,
                  child: Container(
                    width: 234.0.w,
                    height: 61.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color.fromRGBO(39, 39, 39, 1),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14.47.w,
                          left: 12.48.w,
                          child: Container(
                            height: 32.06.w,
                            width: 36.04.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/icons/winnercup.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 11.0.w,
                          left: 69.0.w,
                          child: Container(
                            height: 20.0.w,
                            width: 94.0.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'John Smith',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratMed',
                                    fontSize: 16.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 34.0.w,
                          left: 69.0.w,
                          child: Container(
                            height: 20.0.w,
                            width: 94.0.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'Program Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 12.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 99.0.w,
                  left: 256.0.w,
                  child: Container(
                    width: 20.0.w,
                    height: 27.0.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 170, 0, 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.0.w, 5.0.w, 4.8.w, 5.0.w),
                      child: Container(
                        width: 10.2.w,
                        height: 17.0.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/winner.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 181.0.w,
                  left: 48.0.w,
                  child: Container(
                    width: 234.0.w,
                    height: 61.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color.fromRGBO(39, 39, 39, 1),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14.47.w,
                          left: 12.48.w,
                          child: Container(
                            height: 32.06.w,
                            width: 36.04.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/icons/winnercup.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 11.0.w,
                          left: 69.0.w,
                          child: Container(
                            height: 20.0.w,
                            width: 94.0.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'John Smith',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratMed',
                                    fontSize: 16.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 34.0.w,
                          left: 69.0.w,
                          child: Container(
                            height: 20.0.w,
                            width: 94.0.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'Program Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 12.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 178.0.w,
                  left: 256.0.w,
                  child: Container(
                    width: 20.0.w,
                    height: 27.0.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 170, 0, 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.0.w, 5.0.w, 4.8.w, 5.0.w),
                      child: Container(
                        width: 10.2.w,
                        height: 17.0.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/winner.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 261.0.w,
                  left: 48.0.w,
                  child: Container(
                    width: 234.0.w,
                    height: 61.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color.fromRGBO(39, 39, 39, 1),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14.47.w,
                          left: 12.48.w,
                          child: Container(
                            height: 32.06.w,
                            width: 36.04.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/icons/winnercup.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 11.0.w,
                          left: 69.0.w,
                          child: Container(
                            height: 20.0.w,
                            width: 94.0.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'John Smith',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratMed',
                                    fontSize: 16.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w500,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 34.0.w,
                          left: 69.0.w,
                          child: Container(
                            height: 20.0.w,
                            width: 94.0.w,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'Program Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'MontserratReg',
                                    fontSize: 12.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 257.0.w,
                  left: 256.0.w,
                  child: Container(
                    width: 20.0.w,
                    height: 27.0.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 170, 0, 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.0.w, 5.0.w, 4.8.w, 5.0.w),
                      child: Container(
                        width: 10.2.w,
                        height: 17.0.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/winner.png'),
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
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 30.0.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.w,
            height: 646.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.transparent,
              border: Border.all(
                color: Color(0X4DFFFFFF),
                width: .5,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 11.0.w,
                  left: 103.0.w,
                  right: 102.0.w,
                  child: Container(
                    height: 22.0.w,
                    width: 124.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Weekly Stats',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 36.0.w,
                  left: 142.0.w,
                  right: 141.0.w,
                  child: Container(
                    height: 15.0.w,
                    width: 46.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Week 4',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat.Reg',
                            fontSize: 12.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                // first row

                Positioned(
                  top: 76.0.w,
                  left: 64.0.w,
                  right: 202.0.w,
                  child: Container(
                    width: 63.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Workout',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
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
                  top: 97.0.w,
                  left: 41.0.w,
                  child: Container(
                    width: 109.0.w,
                    height: 109.0.w,
                    // color: Colors.blue,
                    child: Center(
                      child: Container(
                        width: 79.79.w,
                        height: 79.79.w,
                        // color: Colors.green,
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 75,
                          stepSize: 10,
                          selectedColor: Colors.red,
                          unselectedColor: Colors.grey[200],
                          padding: 0,
                          width: 200,
                          height: 200,
                          selectedStepSize: 10,
                          roundedCap: (_, __) => true,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 207.0.w,
                  left: 51.0.w,
                  child: Container(
                    width: 90.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '5 days Completed',
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
                  top: 222.0.w,
                  left: 61.0.w,
                  child: Container(
                    width: 70.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '1 day Pending',
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
                  top: 143.0.w,
                  left: 81.0.w,
                  child: Container(
                    width: 28.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '5/7',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratRegMed',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 76.0.w,
                  left: 216.0.w,
                  right: 78.0.w,
                  child: Container(
                    width: 35.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Meal',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
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
                  top: 97.0.w,
                  left: 179.0.w,
                  child: Container(
                    width: 109.0.w,
                    height: 109.0.w,
                    // color: Colors.blue,
                    child: Center(
                      child: Container(
                        width: 79.79.w,
                        height: 79.79.w,
                        // color: Colors.green,
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 75,
                          stepSize: 10,
                          selectedColor: Colors.red,
                          unselectedColor: Colors.grey[200],
                          padding: 0,
                          width: 200,
                          height: 200,
                          selectedStepSize: 10,
                          roundedCap: (_, __) => true,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 207.0.w,
                  left: 189.0.w,
                  child: Container(
                    width: 90.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '5 days Completed',
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
                  top: 222.0.w,
                  left: 199.0.w,
                  child: Container(
                    width: 70.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '1 day Pending',
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
                  top: 143.0.w,
                  left: 217.0.w,
                  child: Container(
                    width: 38.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '70%',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratRegMed',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                // End of 1st Row

                // Second row

                Positioned(
                  top: 264.0.w,
                  left: 76.0.w,
                  right: 214.0.w,
                  child: Container(
                    width: 39.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Habit',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
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
                  top: 285.0.w,
                  left: 41.0.w,
                  child: Container(
                    width: 109.0.w,
                    height: 109.0.w,
                    // color: Colors.blue,
                    child: Center(
                      child: Container(
                        width: 79.79.w,
                        height: 79.79.w,
                        // color: Colors.green,
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 75,
                          stepSize: 10,
                          selectedColor: Colors.red,
                          unselectedColor: Colors.grey[200],
                          padding: 0,
                          width: 200,
                          height: 200,
                          selectedStepSize: 10,
                          roundedCap: (_, __) => true,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 395.0.w,
                  left: 51.0.w,
                  child: Container(
                    width: 90.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '5 days Completed',
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
                  top: 410.0.w,
                  left: 61.0.w,
                  child: Container(
                    width: 70.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '1 day Pending',
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
                  top: 331.0.w,
                  left: 81.0.w,
                  child: Container(
                    width: 28.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '5/7',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratRegMed',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 264.0.w,
                  left: 214.0.w,
                  right: 75.0.w,
                  child: Container(
                    width: 40.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Steps',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
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
                  top: 285.0.w,
                  left: 179.0.w,
                  child: Container(
                    width: 109.0.w,
                    height: 109.0.w,
                    // color: Colors.blue,
                    child: Center(
                      child: Container(
                        width: 79.79.w,
                        height: 79.79.w,
                        // color: Colors.green,
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 75,
                          stepSize: 10,
                          selectedColor: Colors.red,
                          unselectedColor: Colors.grey[200],
                          padding: 0,
                          width: 200,
                          height: 200,
                          selectedStepSize: 10,
                          roundedCap: (_, __) => true,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 395.0.w,
                  left: 196.0.w,
                  child: Container(
                    width: 76.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Goal: 70k Steps',
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
                  top: 410.0.w,
                  left: 206.0.w,
                  child: Container(
                    width: 57.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '10k Per day',
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
                  top: 331.0.w,
                  left: 227.0.w,
                  child: Container(
                    width: 13.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratRegMed',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                // End of 2nd Row

                // Third row

                Positioned(
                  top: 452.0.w,
                  left: 50.0.w,
                  right: 187.0.w,
                  child: Container(
                    width: 92.0.w,
                    height: 17.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Water Intake',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
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
                  top: 473.0.w,
                  left: 41.0.w,
                  child: Container(
                    width: 109.0.w,
                    height: 109.0.w,
                    // color: Colors.blue,
                    child: Center(
                      child: Container(
                        width: 79.79.w,
                        height: 79.79.w,
                        // color: Colors.green,
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 75,
                          stepSize: 10,
                          selectedColor: Colors.red,
                          unselectedColor: Colors.grey[200],
                          padding: 0,
                          width: 200,
                          height: 200,
                          selectedStepSize: 10,
                          roundedCap: (_, __) => true,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 583.0.w,
                  left: 51.0.w,
                  child: Container(
                    width: 100.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Goal: 21 Its per week',
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
                  top: 513.0.w,
                  left: 77.0.w,
                  child: Container(
                    width: 40.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '0.00',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratRegMed',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 533.0.w,
                  left: 88.0.w,
                  child: Container(
                    width: 15.0.w,
                    height: 15.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Its',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratMed',
                            fontSize: 12.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w500,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 488.0.w,
                  left: 205.0.w,
                  right: 49.0.w,
                  child: Container(
                    width: 75.0.w,
                    height: 72.0.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/progressdashboard.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 583.0.w,
                  left: 189.0.w,
                  child: Container(
                    width: 107.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Progress Dashboard',
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
                  top: 410.0.w,
                  left: 206.0.w,
                  child: Container(
                    width: 57.0.w,
                    height: 12.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '10k Per day',
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
                  top: 331.0.w,
                  left: 227.0.w,
                  child: Container(
                    width: 13.0.w,
                    height: 22.0.w,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'MontserratRegMed',
                            fontSize: 18.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ),

                // End of 3rd Row
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0.w,
        )
      ],
    );
  }
}
