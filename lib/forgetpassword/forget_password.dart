import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:siam_biglee/const/packages.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),),
        title: Center(
          child: Container(
              width: 53.9.w,
              height: 58.0.w,
              child: Image.asset("assets/images/biglee.png")),
        ),
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(23.w, 48.w, 0.w, 0.w),
                  child: Text(
                    'Forget Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 22.sp,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(23.w, 48.w, 0.w, 0.w),
                  child: Text(
                    'Please enter your registered Email ID',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'MontserratMed',
                        fontSize: 14.sp,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w500,
                        height: 1),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(23.w, 59.5.w, 0.w, 0.w),
                child: TextFormField(
                  enabled: true,
                  style: TextStyle(
                      color:
                          Color.fromRGBO(255, 255, 255, 1).withOpacity(.75),
                      fontFamily: 'MontserratMed',
                      fontSize: 14.sp,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w500,
                      height: 1),
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 24.w,
                        height: 24.w,
                        // transform: Matrix4.translationValues(-5.0, -10.0, 0.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icons/mail.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Text(
                        'Email ID',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1)
                                .withOpacity(.75),
                            fontFamily: 'MontserratReg',
                            fontSize: 16.sp,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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
                        message: "Please enter Email ID",
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.red,
                        messageSize: 14.sp,
                      )..show(context);
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(179.w, 25.5.w, 0.w, 0.w),
                  child: Text(
                    'OR',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'MontserratReg',
                        fontSize: 14.sp,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w500,
                        height: 1),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(23.w, 35.0.w, 0.w, 0.w),
                child: Text(
                  'Please enter your registered number',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'MontserratMed',
                      fontSize: 14.sp,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w500,
                      height: 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23, 26.5.w, 23, 0),
                child: Container(
                  child: IntlPhoneField(
                    disableLengthCheck: false,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      label: Container(
                        transform: Matrix4.translationValues(-10.0, 3.0, 0.0),
                        child: Text(
                          'Mobile No',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1)
                                  .withOpacity(.75),
                              fontFamily: 'MontserratReg',
                              fontSize: 16.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w400,
                              height: 1),
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 75)
                              .withOpacity(.75),
                        ),
                      ),
                    ),
                    initialCountryCode:
                        'IN', //default contry code, NP for Nepal
                    showDropdownIcon: true,
                    dropdownIconPosition: IconPosition.trailing,
                    dropdownIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    onChanged: (phone) {
                      //when phone number country code is changed
                      print(phone.completeNumber); //get complete number
                      print(phone.countryCode); // get country code only
                      print(phone.number); // only phone number
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(108.0.w, 59.5.w, 108.0.w, 157.w),
                child: GestureDetector(
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    } else {}
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
                    child: Center(
                      child: Text(
                        'Send Reset Link',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 15,
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
          )),
    );
  }
}
