import 'package:flutter/cupertino.dart';
import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/dashboard/components/progressdashboard/summery_widgets.dart';
import 'package:siam_biglee/dashboard/components/progressdashboard/timeline.dart';
import 'package:siam_biglee/dashboard/components/progressdashboard/weekly_status.dart';

class ProgressTrackerScreens extends StatefulWidget {
  const ProgressTrackerScreens({Key? key}) : super(key: key);

  @override
  _ProgressTrackerScreensState createState() => _ProgressTrackerScreensState();
}

class _ProgressTrackerScreensState extends State<ProgressTrackerScreens> {
  bool summery = true;
  bool weeklystatus = false;
  bool timeline = false;
  int summerytabindex = 0;

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
      child: DefaultTabController(
        length: 3,
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
                padding: EdgeInsets.fromLTRB(23.0.w, 37.34.w, 181.0.w, 0.0.w),
                child: Text(
                  "Progress Dashboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.w,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23.0.w, 25.0.w, 0.0.w, 0.0.w),
                child: Container(
                  width: 248.0.w,
                  height: 23.0.w,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            summerytabindex = 0;
                            summery = true;
                            weeklystatus = false;
                            timeline = false;
                          });
                        },
                        child: Container(
                          width: 72.w,
                          height: 23.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: summery == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          child: Center(
                            child: Text(
                              "Summary",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 23.w),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            summerytabindex = 1;
                            summery = false;
                            weeklystatus = true;
                            timeline = false;
                          });
                        },
                        child: Container(
                          width: 90.0.w,
                          height: 23.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: weeklystatus == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          child: Container(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "Weekly Stats",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.w,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 23.w),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            summerytabindex = 2;
                            summery = false;
                            weeklystatus = false;
                            timeline = true;
                          });
                        },
                        child: Container(
                          width: 72.w,
                          height: 23.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: timeline == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          child: Center(
                            child: Text(
                              "Timeline",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IndexedStack(
                index: summerytabindex,
                children: [
                  Summery(),
                  WeeklyStatus(),
                  TimeLine(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

