import 'package:siam_biglee/const/packages.dart';

class WorkoutScreens extends StatelessWidget {
  const WorkoutScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(375, 718),
      context: context,
      minTextAdapt: true,
      orientation: Orientation.portrait,
    );
    return ListView(
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
          padding: EdgeInsets.fromLTRB(23.0.w, 12.34.w, 0.0.w, 0.0.w),
          child: Text(
            'Workout',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 16.w,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.w700,
                height: 1),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24.0.w, 7.0.w, 41.0.w, 0.0.w),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt u',
            textAlign: TextAlign.left,
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
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 14.0.w, 0.0.w, 0.0.w),
          child: Text(
            'Equipment Needed',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 16.w,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.w700,
                height: 1),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 14.0.w, 322.0.w, 0.0.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Color(0xff272727),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(5.0.w, 5.0.w, 5.0.w, 5.0.w),
              child: Image.asset('assets/images/mat.png', fit: BoxFit.contain),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 14.0.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.0.w,
            height: 69.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff272727),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 6.0.w,
                  left: 6.0.w,
                  bottom: 6.0.w,
                  child: Container(
                    width: 57.0.w,
                    height: 57.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/workoutimage.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 24.0.w,
                  left: 73.0.w,
                  bottom: 25.0.w,
                  child: Text(
                    "Circuit Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 27.34.w,
                  left: 302.0.w,
                  bottom: 28.36.w,
                  child: Container(
                    width: 7.66.w,
                    height: 13.30.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/rightarrow1.png'),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 12.0.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.0.w,
            height: 69.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff272727),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 6.0.w,
                  left: 6.0.w,
                  bottom: 6.0.w,
                  child: Container(
                    width: 57.0.w,
                    height: 57.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/workoutimage.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 24.0.w,
                  left: 73.0.w,
                  bottom: 25.0.w,
                  child: Text(
                    "Circuit 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 27.34.w,
                  left: 302.0.w,
                  bottom: 28.36.w,
                  child: Container(
                    width: 7.66.w,
                    height: 13.30.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/rightarrow1.png'),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 12.0.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.0.w,
            height: 69.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff272727),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 6.0.w,
                  left: 6.0.w,
                  bottom: 6.0.w,
                  child: Container(
                    width: 57.0.w,
                    height: 57.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/workoutimage.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 24.0.w,
                  left: 73.0.w,
                  bottom: 25.0.w,
                  child: Text(
                    "Circuit 3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 27.34.w,
                  left: 302.0.w,
                  bottom: 28.36.w,
                  child: Container(
                    width: 7.66.w,
                    height: 13.30.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/rightarrow1.png'),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(116.0.w, 27.0.w, 115.0.w, 0.0.w),
            child: SizedBox(
              width: 144.0.w,
              height: 36.0.w,
              child: Material(
                color: Color(0xffe83838),
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 9,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Start Workout",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.w,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
