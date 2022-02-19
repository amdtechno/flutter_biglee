import 'package:another_flushbar/flushbar.dart';
import 'package:siam_biglee/const/packages.dart';
import 'package:siam_biglee/forgetpassword/forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _secureText = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 670),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formKey,
        child: Container(
          width: 375.w,
          height: 670.w,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(.72), BlendMode.hardLight),
              image: AssetImage("assets/images/signin.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(126.w, 171.w, 124.16.w, 0.w),
                child: Container(
                  height: 134.34.w,
                  width: 124.84.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/biglee.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(126.w, 37.66.w, 124.16.w, 0.w),
                child: Container(
                  height: 27.0.w,
                  width: 72.0.w,
                  child: Center(
                    child: Text(
                      'Log In',
                      textScaleFactor: ScreenUtil().textScaleFactor,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 22.sp,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w700,
                          height: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.w, 60.0.w, 17.0.w, 0.w),
                child: Container(
                  height: 27.0.w,
                  width: 72.0.w,
                  child: TextFormField(
                    enabled: true,
                    style: TextStyle(
                        color:
                            Color.fromRGBO(255, 255, 255, 1).withOpacity(.75),
                        fontFamily: 'MontserratReg',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w400,
                        height: 1),
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 24.w,
                        height: 24.w,
                        transform: Matrix4.translationValues(-5.0, -10.0, 0.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icons/mail.png'),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color:
                              Color.fromRGBO(255, 255, 255, 1).withOpacity(.75),
                          fontFamily: 'MontserratReg',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1),
                      hintText: 'Email ID/Mobile Number',
                      fillColor: Colors.white,
                      contentPadding: EdgeInsetsDirectional.all(18.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 75)
                              .withOpacity(.75),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Flushbar(
                          message:  "Please enter Email ID",
                          duration:  Duration(seconds: 3),
                          backgroundColor: Colors.red,
                          messageSize: 14.sp,
                        )..show(context);
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.w, 38.0.w, 17.0.w, 0.w),
                child: Container(
                  height: 27.0.w,
                  width: 72.0.w,
                  child: TextFormField(
                    enabled: true,
                    style: TextStyle(
                        color:
                            Color.fromRGBO(255, 255, 255, 1).withOpacity(.75),
                        fontFamily: 'MontserratReg',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w400,
                        height: 1),
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      suffixIcon: _secureText
                          ? GestureDetector(
                              onTap: () => setState(() {
                                _secureText = !_secureText;
                              }),
                              child: Container(
                                width: 24.w,
                                height: 24.w,
                                transform:
                                    Matrix4.translationValues(5.0, -10.0, 0.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/icons/eye.png'),
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => setState(() {
                                _secureText = !_secureText;
                              }),
                              child: Container(
                                width: 24.w,
                                height: 24.w,
                                transform:
                                    Matrix4.translationValues(5.0, -10.0, 0.0),
                                child: Image.asset(
                                  'assets/icons/eyeslash.png',
                                  color: Colors.white,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                      prefixIcon: Container(
                        width: 24.w,
                        height: 24.w,
                        transform: Matrix4.translationValues(-5.0, -10.0, 0.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icons/password.png'),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color:
                              Color.fromRGBO(255, 255, 255, 1).withOpacity(.75),
                          fontFamily: 'MontserratReg',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1),
                      hintText: 'Password',
                      fillColor: Colors.white,
                      contentPadding: EdgeInsetsDirectional.all(18.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 75)
                              .withOpacity(.75),
                        ),
                      ),
                      // textAlignVertical: TextAlignVertical.center,
                      // cursorColor: Colors.white,
                    ),
                    // onSaved: (String value) => _username = value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        // return 'enter the password';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(14.0.w, 14.0.w, 17.0.w, 0.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                      )
                      );
                    });
                  },
                  child: Text(
                    'Forget Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'MontserratReg',
                        fontSize: 16.sp,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(147.w, 32.0.w, 147.0.w, 34.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => OnboardingReqScreens()
                      ),);
                    });
                    // if (!_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
                    //   setState(() {
                    //     Navigator.pushReplacement(context, MaterialPageRoute(
                    //         builder: (context) => OnboardingReqScreens()
                    //     ),);
                    //   });
                    // } else {
                    //
                    // }
                  },
                  child: Container(
                    width: 81.w,
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
                      padding: EdgeInsets.fromLTRB(16.0.w,9.0.w,16.0.w,9.0.w),
                      child: Container(
                        width: 49.w,
                        height: 18.w,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Log In',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 15.sp,
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
        ),
      ),
    );
  }
}
