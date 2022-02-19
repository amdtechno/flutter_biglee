import 'package:siam_biglee/const/packages.dart';

class WaterIntakeScreen extends StatefulWidget {
  const WaterIntakeScreen({Key? key}) : super(key: key);

  @override
  _WaterIntakeScreenState createState() => _WaterIntakeScreenState();
}

class _WaterIntakeScreenState extends State<WaterIntakeScreen> {
  int water = 0;
  int b = 100;
  bool _validate = false;
  int? reqsteps;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController waterintake = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
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
                padding: EdgeInsets.fromLTRB(23.0.w, 12.34.w, 0.0.w, 0.0.w),
                child: Text(
                  'Water Intake',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'MontserratReg',
                      fontSize: 14.w,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(132.0.w, 43.00.w, 132.0.w, 0.0.w),
                child: Container(
                  height: 111.0.w,
                  width: 111.0.w,
                  child: Stack(
                    children: [
                      Positioned(
                        child: CircularStepProgressIndicator(
                          totalSteps: 3,
                          currentStep: (water),
                          stepSize: 8,
                          selectedColor: Colors.greenAccent,
                          unselectedColor: Colors.white,
                          padding: 0,
                          width: 150,
                          height: 150,
                          selectedStepSize: 8,
                          roundedCap: (_, __) => true,
                        ),
                      ),
                      Positioned(
                          top: 28.0.w,
                          left: 20.0.w,
                          right: 20.0.w,
                          child: Container(
                            height: 25.0.w,
                            width: 200.0.w,
                            // color :Colors.red,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                water.toString(),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 24.w,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            ),
                          )),
                      Positioned(
                          top: 67.0.w,
                          bottom: 27.0.w,
                          left: 45.0.w,
                          right: 44.0.w,
                          child: Text(
                            'Lts',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14.w,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(144.0.w, 22.0.w, 143.0.w, 0.0.w),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Goal per day',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 14.w,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w400,
                        height: 1),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(146.0.w, 17.0.w, 0.0.w, 0.0.w),
                    child: Container(
                      width: 35.0.w,
                      height: 35.0.w,
                      child: Image.asset('assets/icons/steps.png',
                          fit: BoxFit.contain, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5.0.w, 26.0.w, 0.0.w, 0.0.w),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '3 L',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 14.w,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23.0.w, 56.0.w, 23.0.w, 0.0.w),
                child: Container(
                  width: 329.0.w,
                  height: 178.0.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3),
                      topRight: Radius.circular(3),
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
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
                        left: 112.0.w,
                        top: 38.0.w,
                        child: Text(
                          'Add Water Intake',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(229, 229, 229, 0.5),
                              fontFamily: 'MontserratReg',
                              fontSize: 12.w,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w400,
                              height: 1),
                        ),
                      ),
                      Positioned(
                        top: 63.0.w,
                        left: 125.w,
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
                            color: Color.fromRGBO(39, 39, 39, 0.5),
                            border: Border.all(
                              color: Color.fromRGBO(39, 39, 39, 1),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(9.0.w, 6.0.w, 0.0, 8.5.w),
                            child: Stack(
                              children: [
                                TextFormField(
                                  controller: waterintake,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  enabled: true,
                                  style: TextStyle(
                                      color: Color.fromRGBO(140, 140, 140, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 16.w,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.w500,
                                      height: 1),
                                  decoration: InputDecoration(
                                      // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                                      border: InputBorder.none),
                                  onChanged: (value) {
                                    setState(() {
                                      if (value == null || value.isEmpty){
                                        // int.parse('0');
                                        water = int.parse('0');
                                      }else{
                                        water = int.parse(value);
                                      }
                                      // reqsteps == (steps ~/ 100);
                                    });
                                  },
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      Flushbar(
                                        message: "Please enter Step Count",
                                        duration: Duration(seconds: 3),
                                        backgroundColor: Colors.red,
                                        messageSize: 14.w,
                                      )..show(context);
                                    }
                                    return null;
                                  },
                                ),
                                Positioned(
                                  right: 5.0.w,
                                  // top: 7.0.w,
                                  bottom: 0.0.w,
                                  child: Text(
                                    'Lts',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(229, 229, 229, 0.5),
                                        fontFamily: 'MontserratReg',
                                        fontSize: 12.w,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120.0.w,
                        top: 113.0.w,
                        child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // TODO submit
                            }
                            // setState(() {
                            //   // userstepsInput.text.isEmpty ? _validate = true : _validate = false;
                            // });
                          },
                          child: Container(
                            width: 89.0.w,
                            height: 36.0.w,
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
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Submit',
                                  textAlign: TextAlign.left,
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
            ],
          ),
        ),
      ),
    );
  }
}
