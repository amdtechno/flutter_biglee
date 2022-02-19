import 'package:siam_biglee/Widgets/skeleton_container.dart';
import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/Widgets/skeleton_container.dart';

class MealScreens extends StatefulWidget {
  const MealScreens({Key? key}) : super(key: key);

  @override
  _MealScreensState createState() => _MealScreensState();
}

class _MealScreensState extends State<MealScreens>
    with TickerProviderStateMixin {
  TabController? _tabController;
  bool prebreakfast = true;
  bool breakfast = false;
  bool morningsnack = false;
  bool lunch = false;
  int foodtabindex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    int bottomindex = 3;
  }

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
              padding: EdgeInsets.fromLTRB(54.0.w, 36.0.w, 23.0.w, 0.0.w),
              child: Container(
                height: 31.0.w,
                width: 298.0.w,
                child: TabBar(
                  controller: _tabController,

                  labelStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16.w,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                  indicatorColor: Color.fromRGBO(232, 56, 56, 1),
                  tabs: [
                    Tab(
                      text: 'Meal Tracker',
                    ),
                    Tab(
                      text: 'Diet Plan',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0.w, 30.0.w, 0.0.w, 0.0.w),
              child: Container(
                height: 175.0.w,
                width: 298.0.w,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(0.0.w, 0.0.w, 272.0.w, 0.0.w),
                          child: SkeletonContainer.square(width: 81.0.w, height: 17.0.w),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0.0.w, 14.0.w, 232.0.w, 0.0.w),
                          child: SkeletonContainer.square(width: 120.0.w, height: 120.0.w),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(0.0.w, 9.0.w, 226.0.w, 0.0.w),
                          child: SkeletonContainer.square(width: 126.0.w, height: 15.0.w),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0.0.w, 0.0.w, 272.0.w, 0.0.w),
                          child: Text(
                            "On Waking",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.w,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0.0.w, 14.0.w, 232.0.w, 0.0.w),
                          child: Container(
                            width: 120.0.w,
                            height: 120.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffc4c4c4),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/waterwithglass.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0.0.w, 9.0.w, 226.0.w, 0.0.w),
                          child: Text(
                            "Plain Water with Salt",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0.w, 30.0.w, 0.0.w, 0.0.w),
              child: Container(
                height: 23.0.w,
                width: 343.0.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            foodtabindex = 0;
                            prebreakfast = true;
                            breakfast = false;
                            morningsnack = false;
                            lunch = false;

                          });
                        },
                        child: Container(
                          width: 94.0.w,
                          height: 23.0.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: prebreakfast == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Pre Breakfast",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontFamily: "MontserratReg",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            foodtabindex = 1;

                            prebreakfast = false;
                            breakfast = true;
                            morningsnack = false;
                            lunch = false;
                          });
                        },
                        child: Container(
                          width: 94.0.w,
                          height: 23.0.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: breakfast == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Breakfast",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontFamily: "MontserratReg",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            foodtabindex = 2;
                            prebreakfast = false;
                            breakfast = false;
                            morningsnack = true;
                            lunch = false;
                          });
                        },
                        child: Container(
                          width: 94.0.w,
                          height: 23.0.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: morningsnack == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Morning Snack",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontFamily: "MontserratReg",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            foodtabindex = 3;
                            prebreakfast = false;
                            breakfast = false;
                            morningsnack = false;
                            lunch = true;
                          });
                        },
                        child: Container(
                          width: 94.0.w,
                          height: 23.0.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: lunch == true
                                ? Color(0xffe83838)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Lunch",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.w,
                                fontFamily: "MontserratReg",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
      IndexedStack(
        index: foodtabindex,
        children: [
          PreBreakFast(),
          BreakFast(),
          MorningSnack(),
          Lunch(),
        ],
      ),
          ],
        ),
      ),
    );
  }
}

class PreBreakFast extends StatelessWidget {
  const PreBreakFast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 35.0.w, 23.0.w, 0.0.w),
          child: Container(
            width: 329.0.w,
            height: 63.0.w,
            decoration: BoxDecoration(
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
                    blurRadius: 8),
              ],
              color: Color.fromRGBO(39, 39, 39, 1),
              border: Border.all(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(11.0.w, 9.0.w, 0.0.w, 9.0.w),
                  child: Container(
                    height: 45.0.w,
                    width: 272.0.w,
                    child: Text(
                      'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                      textScaleFactor: 1,
                      maxLines: 3,
                      style: TextStyle(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 12.w,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(25.0.w, 25.0.w, 0.0.w, 26.0.w),
                  child: Container(
                    height: 12.0.w,
                    width: 12.0.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/info.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24.0.w,25.0.w,0.0.w,0.0.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230.w,
                      height: 106.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/lentiles.png'),fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: Text('Lentiles', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'MontserratMed',
                          fontSize: 14.w,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w500,
                          height: 1
                      ),),
                    ),
                  ],
                ),
                SizedBox(width: 15.0.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230.w,
                      height: 106.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/lentiles.png'),fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: Text('Lentiles', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'MontserratMed',
                          fontSize: 14.w,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w500,
                          height: 1
                      ),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class BreakFast extends StatelessWidget {
  const BreakFast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 35.0.w, 23.0.w, 0.0.w),
          child: SkeletonContainer.square(width: 329.0.w, height: 63.0.w),

          // Container(
          //   width: 329.0.w,
          //   height: 63.0.w,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(6),
          //       topRight: Radius.circular(6),
          //       bottomLeft: Radius.circular(6),
          //       bottomRight: Radius.circular(6),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //           color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
          //           offset: Offset(3, 4),
          //           blurRadius: 8),
          //     ],
          //     color: Color.fromRGBO(39, 39, 39, 1),
          //     border: Border.all(
          //       color: Color.fromRGBO(255, 255, 255, 0.3),
          //       width: 1,
          //     ),
          //   ),
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding:
          //             EdgeInsets.fromLTRB(11.0.w, 9.0.w, 0.0.w, 9.0.w),
          //         child: Container(
          //           height: 45.0.w,
          //           width: 272.0.w,
          //           child: Text(
          //             'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
          //             textScaleFactor: 1,
          //             maxLines: 3,
          //             style: TextStyle(
          //                 color: Color.fromRGBO(229, 229, 229, 1),
          //                 fontFamily: 'MontserratReg',
          //                 fontSize: 12.w,
          //                 letterSpacing:
          //                     0 /*percentages not used in flutter. defaulting to zero*/,
          //                 fontWeight: FontWeight.w400,
          //                 height: 1.2),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding:
          //             EdgeInsets.fromLTRB(25.0.w, 25.0.w, 0.0.w, 26.0.w),
          //         child: Container(
          //           height: 12.0.w,
          //           width: 12.0.w,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage('assets/icons/info.png'),
          //                 fit: BoxFit.contain),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24.0.w,25.0.w,0.0.w,0.0.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonContainer.square(width: 230.0.w, height: 106.0.w),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: SkeletonContainer.square(width: 56.0.w, height: 17.0.w),
                    ),
                  ],
                ),
                SizedBox(width: 15.0.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonContainer.square(width: 230.0.w, height: 106.0.w),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: SkeletonContainer.square(width: 56.0.w, height: 17.0.w),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class MorningSnack extends StatelessWidget {
  const MorningSnack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 35.0.w, 23.0.w, 0.0.w),
          child: SkeletonContainer.square(width: 329.0.w, height: 63.0.w),

          // Container(
          //   width: 329.0.w,
          //   height: 63.0.w,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(6),
          //       topRight: Radius.circular(6),
          //       bottomLeft: Radius.circular(6),
          //       bottomRight: Radius.circular(6),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //           color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
          //           offset: Offset(3, 4),
          //           blurRadius: 8),
          //     ],
          //     color: Color.fromRGBO(39, 39, 39, 1),
          //     border: Border.all(
          //       color: Color.fromRGBO(255, 255, 255, 0.3),
          //       width: 1,
          //     ),
          //   ),
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding:
          //             EdgeInsets.fromLTRB(11.0.w, 9.0.w, 0.0.w, 9.0.w),
          //         child: Container(
          //           height: 45.0.w,
          //           width: 272.0.w,
          //           child: Text(
          //             'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
          //             textScaleFactor: 1,
          //             maxLines: 3,
          //             style: TextStyle(
          //                 color: Color.fromRGBO(229, 229, 229, 1),
          //                 fontFamily: 'MontserratReg',
          //                 fontSize: 12.w,
          //                 letterSpacing:
          //                     0 /*percentages not used in flutter. defaulting to zero*/,
          //                 fontWeight: FontWeight.w400,
          //                 height: 1.2),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding:
          //             EdgeInsets.fromLTRB(25.0.w, 25.0.w, 0.0.w, 26.0.w),
          //         child: Container(
          //           height: 12.0.w,
          //           width: 12.0.w,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage('assets/icons/info.png'),
          //                 fit: BoxFit.contain),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24.0.w,25.0.w,0.0.w,0.0.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonContainer.square(width: 230.0.w, height: 106.0.w),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: SkeletonContainer.square(width: 56.0.w, height: 17.0.w),
                    ),
                  ],
                ),
                SizedBox(width: 15.0.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonContainer.square(width: 230.0.w, height: 106.0.w),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: SkeletonContainer.square(width: 56.0.w, height: 17.0.w),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class Lunch extends StatelessWidget {
  const Lunch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(23.0.w, 35.0.w, 23.0.w, 0.0.w),
          child: SkeletonContainer.square(width: 329.0.w, height: 63.0.w),

          // Container(
          //   width: 329.0.w,
          //   height: 63.0.w,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(6),
          //       topRight: Radius.circular(6),
          //       bottomLeft: Radius.circular(6),
          //       bottomRight: Radius.circular(6),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //           color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
          //           offset: Offset(3, 4),
          //           blurRadius: 8),
          //     ],
          //     color: Color.fromRGBO(39, 39, 39, 1),
          //     border: Border.all(
          //       color: Color.fromRGBO(255, 255, 255, 0.3),
          //       width: 1,
          //     ),
          //   ),
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding:
          //             EdgeInsets.fromLTRB(11.0.w, 9.0.w, 0.0.w, 9.0.w),
          //         child: Container(
          //           height: 45.0.w,
          //           width: 272.0.w,
          //           child: Text(
          //             'Lorem ipsum dolor sit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
          //             textScaleFactor: 1,
          //             maxLines: 3,
          //             style: TextStyle(
          //                 color: Color.fromRGBO(229, 229, 229, 1),
          //                 fontFamily: 'MontserratReg',
          //                 fontSize: 12.w,
          //                 letterSpacing:
          //                     0 /*percentages not used in flutter. defaulting to zero*/,
          //                 fontWeight: FontWeight.w400,
          //                 height: 1.2),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding:
          //             EdgeInsets.fromLTRB(25.0.w, 25.0.w, 0.0.w, 26.0.w),
          //         child: Container(
          //           height: 12.0.w,
          //           width: 12.0.w,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage('assets/icons/info.png'),
          //                 fit: BoxFit.contain),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24.0.w,25.0.w,0.0.w,0.0.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonContainer.square(width: 230.0.w, height: 106.0.w),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: SkeletonContainer.square(width: 56.0.w, height: 17.0.w),
                    ),
                  ],
                ),
                SizedBox(width: 15.0.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonContainer.square(width: 230.0.w, height: 106.0.w),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0.w, 6.0.w, 0.0.w, 0.0.w),
                      child: SkeletonContainer.square(width: 56.0.w, height: 17.0.w),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
