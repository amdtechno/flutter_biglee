import 'package:siam_biglee/const/packages.dart';

class Summery extends StatefulWidget {
  const Summery({Key? key}) : super(key: key);

  @override
  _SummeryState createState() => _SummeryState();
}

class _SummeryState extends State<Summery> {
  bool upperbody = false;
  bool lowerbody = false;
  bool measurement = true;
  bool weight = false;
  int mesurementweightindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(23.0.w, 35.0.w, 23.0.w, 0.0.w),
      child: Container(
        width: 329.0.w,
        height: 364.0.w,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 31.0.w,
              left: 0.0.w,
              child: Container(
                width: 329.0.w,
                height: 333.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(3),
                    bottomLeft: Radius.circular(3),
                    bottomRight: Radius.circular(3),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 1),
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    width: 1,
                  ),
                ),
                child: IndexedStack(
                  index: mesurementweightindex,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(7.0.w,10.0.w,0.0.w,0.0.w),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        upperbody = true;
                                        lowerbody =false;
                                      });
                                    },
                                    child: Container(
                                      height: 12.0.w,
                                      width: 61.0.w,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text('Upper Body', textAlign: TextAlign.left, style: TextStyle(
                                            color: upperbody == true ? Color.fromRGBO(255, 255, 255, 1) : Color.fromRGBO(255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 10.0.w,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(7.0.w,4.0.w,0.0.w,0.0.w),
                                  child: upperbody == true ? Container(
                                    height: 1.0.w,
                                    width: 61.0.w,
                                    decoration: BoxDecoration(
                                        color: Colors.red
                                    ),
                                  ) : null,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(22.0.w,10.0.w,0.0.w,0.0.w),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        lowerbody = true;
                                        upperbody = false;
                                      });
                                    },
                                    child: Container(
                                      height: 12.0.w,
                                      width: 60.0.w,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text('Lower Body', textAlign: TextAlign.left, style: TextStyle(
                                            color: lowerbody == true ? Color.fromRGBO(255, 255, 255, 1) : Color.fromRGBO(255, 255, 255, 1),
                                            fontFamily: 'MontserratReg',
                                            fontSize: 10.0.w,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w400,
                                            height: 1
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(22.0.w,4.0.w,0.0.w,0.0.w),
                                  child: lowerbody == true ? Container(
                                    height: 1.0.w,
                                    width: 61.0.w,
                                    decoration: BoxDecoration(
                                        color: Colors.red
                                    ),
                                  ) : null,
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(72.0.w,10.0.w,0.0.w,0.0.w),
                              child: Container(
                                height: 15.0.w,
                                width: 91.0.w,
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text('Week 4 - Day 6', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'MontserratReg',
                                      fontSize: 12.0.w,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w400,
                                      height: 1
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text("arun",style: TextStyle(color: Colors.red),),
                  ],
                ),

              ),
            ),
            Positioned(
              top: 0.0.w,
              left: 155.0.w,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    measurement = true;
                    weight = false;
                  });
                },
                child:  measurement == true ? Container(
                  width: 106.0.w,
                  height: 32.0.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    border: Border(
                      // color: Color.fromRGBO(255, 255, 255, 0.3),
                      // width: 1,
                      left: BorderSide.lerp(
                          BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              width: 1),
                          BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              width: 1,
                              style: BorderStyle.solid),
                          0.5),
                      right: BorderSide.lerp(
                          BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              width: 1),
                          BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              width: 1,
                              style: BorderStyle.solid),
                          0.5),
                      top: BorderSide.lerp(
                          BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              width: 1),
                          BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              width: 1,
                              style: BorderStyle.solid),
                          0.5),
                    ),
                  ),
                ) : Container(),
              ),
            ),
            Positioned(
              top: 0.0.w,
              right : 0.0.w,
              child: measurement == false ? Container(
                width: 65.0.w,
                height: 32.0.w,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(3),
                  //   topRight: Radius.circular(3),
                  //   bottomLeft: Radius.circular(0),
                  //   bottomRight: Radius.circular(0),
                  // ),
                  color: Color.fromRGBO(0, 0, 0, 1),
                  border: Border(
                    // color: Color.fromRGBO(255, 255, 255, 0.3),
                    // width: 1,
                    left: BorderSide.lerp(
                        BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            width: 1),
                        BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            width: 1,
                            style: BorderStyle.solid),
                        0.5),
                    right: BorderSide.lerp(
                        BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            width: 1),
                        BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            width: 1,
                            style: BorderStyle.solid),
                        0.5),
                    top: BorderSide.lerp(
                        BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            width: 1),
                        BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            width: 1,
                            style: BorderStyle.solid),
                        0.5),
                  ),
                ),
              ) : Container(),
            ),
            Positioned(
              top: 8.0.w,
              left: 276.0.w,
              child:  GestureDetector(
                onTap: () {
                  setState(() {
                    mesurementweightindex = 1;
                    measurement = false;
                  });
                },
                child: Container(
                  width: 45.0.w,
                  height: 15.0.w,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Weight',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: measurement == false ? Color.fromRGBO(232, 56, 56, 1) : Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 12.0.w,
                          letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 9.0.w,
              left: 165.0.w,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    mesurementweightindex = 0;
                    measurement = true;
                  });
                },
                child: Container(
                  width: 86.0.w,
                  height: 15.0.w,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Measurement',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: measurement == true ? Color.fromRGBO(232, 56, 56, 1) : Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 12.0.w,
                          letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
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
}
