import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/dashboard/components/dietplan_screens.dart';
import 'package:siam_biglee/dashboard/components/myprograms_screens.dart';
import 'package:siam_biglee/dashboard/components/workout_screens.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool home = false;
  bool myprogram = false;
  bool workout = false;
  bool dietplan = false;
  int bottomnavigationindex = 0;
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 64.0.w,
          flexibleSpace: CustomAppBar(
            title: 'Program name',
            leadingicon: bottomnavigationindex == 1
                ? 'assets/icons/leftarrow.png'
                : bottomnavigationindex == 2
                    ? 'assets/icons/leftarrow.png'
                    : bottomnavigationindex == 3
                        ? 'assets/icons/leftarrow.png'
                        : 'assets/icons/drawer.png',
            press: () => print('press'),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: IndexedStack(
          index: bottomnavigationindex,
          children: [
            HomeScreens(),
            MyProgramScreens(),
            WorkoutScreens(),
            MealScreens()
          ],
        ),
        bottomNavigationBar: Container(
          height: 56.0.w,
          width: 375.0.w,
          child: Stack(
            children: [
              bottomnavigationindex == 0
                  ? Positioned(
                      left: 36.0.w,
                      right: 311.0.w,
                      child: Container(
                          width: 28.w,
                          height: 5.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Color.fromRGBO(232, 56, 56, 1),
                          )),
                    )
                  : Container(),
              Positioned(
                left: 41.33.w,
                bottom: 24.0.w,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomnavigationindex = 0;
                      print(home);
                    });
                  },
                  child: Container(
                    height: 20.0.w,
                    width: 17.33.w,
                    child: Image.asset(
                      'assets/icons/home.png',
                      color: bottomnavigationindex == 0
                          ? Color.fromRGBO(232, 56, 56, 1)
                          : Color.fromRGBO(119, 119, 119, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34.0.w,
                bottom: 8.0.w,
                child: Container(
                  height: 12.0.w,
                  width: 32.33.w,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Home',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: bottomnavigationindex == 0
                              ? Color.fromRGBO(232, 56, 56, 1)
                              : Color.fromRGBO(119, 119, 119, 1),
                          fontFamily: 'MontserratSb',
                          fontSize: 10.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w500,
                          height: 1),
                    ),
                  ),
                ),
              ),
              bottomnavigationindex == 1
                  ? Positioned(
                      left: 130.0.w,
                      child: Container(
                          width: 28,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Color.fromRGBO(232, 56, 56, 1),
                          )),
                    )
                  : Container(),
              Positioned(
                left: 135.0.w,
                bottom: 24.0.w,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomnavigationindex = 1;
                    });
                  },
                  child: Container(
                    height: 20.0.w,
                    width: 20.0.w,
                    child: Image.asset(
                      'assets/icons/myprogram.png',
                      color: bottomnavigationindex == 1
                          ? Color.fromRGBO(232, 56, 56, 1)
                          : Color.fromRGBO(119, 119, 119, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 114.0.w,
                bottom: 8.0.w,
                child: Container(
                  height: 12.0.w,
                  width: 62.0.w,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'My Program',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: bottomnavigationindex == 1
                              ? Color.fromRGBO(232, 56, 56, 1)
                              : Color.fromRGBO(119, 119, 119, 1),
                          fontFamily: 'MontserratSb',
                          fontSize: 10.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w500,
                          height: 1),
                    ),
                  ),
                ),
              ),
              bottomnavigationindex == 2
                  ? Positioned(
                      left: 221.0.w,
                      child: Container(
                          width: 28,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Color.fromRGBO(232, 56, 56, 1),
                          )),
                    )
                  : Container(),
              Positioned(
                left: 225.0.w,
                bottom: 25.5.w,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomnavigationindex = 2;
                    });
                  },
                  child: Container(
                    height: 17.5.w,
                    width: 20.0.w,
                    child: Image.asset(
                      'assets/icons/workout.png',
                      color: bottomnavigationindex == 2
                          ? Color.fromRGBO(232, 56, 56, 1)
                          : Color.fromRGBO(119, 119, 119, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 213.0.w,
                bottom: 8.0.w,
                child: Container(
                  height: 12.0.w,
                  width: 44.0.w,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Workout',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: bottomnavigationindex == 2
                              ? Color.fromRGBO(232, 56, 56, 1)
                              : Color.fromRGBO(119, 119, 119, 1),
                          fontFamily: 'MontserratSb',
                          fontSize: 10.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w500,
                          height: 1),
                    ),
                  ),
                ),
              ),
              bottomnavigationindex == 3
                  ? Positioned(
                      left: 312.0.w,
                      child: Container(
                          width: 28,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Color.fromRGBO(232, 56, 56, 1),
                          )),
                    )
                  : Container(),
              Positioned(
                left: 316.0.w,
                bottom: 24.0.w,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomnavigationindex = 3;
                    });
                  },
                  child: Container(
                    height: 17.5.w,
                    width: 20.0.w,
                    child: Image.asset(
                      'assets/icons/myprogram.png',
                      color: bottomnavigationindex == 3
                          ? Color.fromRGBO(232, 56, 56, 1)
                          : Color.fromRGBO(119, 119, 119, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 302.0.w,
                bottom: 8.0.w,
                child: Container(
                  height: 12.0.w,
                  width: 47.0.w,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Diet Plan',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: bottomnavigationindex == 3
                              ? Color.fromRGBO(232, 56, 56, 1)
                              : Color.fromRGBO(119, 119, 119, 1),
                          fontFamily: 'MontserratSb',
                          fontSize: 10.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w500,
                          height: 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
