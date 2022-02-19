
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:siam_biglee/const/packages.dart';

class OtpScreens extends StatefulWidget {
  const OtpScreens({Key? key}) : super(key: key);

  @override
  State<OtpScreens> createState() => _OtpScreensState();
}

class _OtpScreensState extends State<OtpScreens> {
  TextEditingController textEditingController = TextEditingController();
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Container(
              width: 53.9.w,
              height: 58.0.w,
              child: Image.asset("assets/images/biglee.png")),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(23.w, 48.w, 0.w, 0.w),
            child: Text(
              'Enter Your OTP',
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
          Padding(
            padding: EdgeInsets.fromLTRB(23.w, 48.w, 23.0.w, 0.w),
            child: Text(
              'We’ve sent an email to Mail@mail.com with a verification OTP. Please check your inbox and enter your OTP below',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'MontserratMed',
                  fontSize: 14.sp,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w700,
                  height: 1.3),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60.w, 54.w, 59.0.w, 0.w),
            child: PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              obscureText: true,
              obscuringCharacter: '*',
              obscuringWidget: Image.asset('assets/logos/logo.png'),
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 3) {
                  return "Enter the valid pin";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                inactiveFillColor: Color.fromRGBO(39, 39, 39, 1).withOpacity(.75),
                inactiveColor: Color.fromRGBO(39, 39, 39, 1).withOpacity(.75),
                fieldHeight: 60.w,
                fieldWidth: 46.w,
                activeFillColor: Colors.black,
              ),
              cursorColor: Colors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              // errorAnimationController: errorController,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onCompleted: (v) {
                print(textEditingController);
              },
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                print(value);
                setState(() {
                  // currentText = value;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(84.w, 40.w, 84.0.w, 0.w),
            child: Text(
              'Didn’t Receive OTP? Resend',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'MontserratMed',
                  fontSize: 14.sp,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w700,
                  height: 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(130.0.w, 35.5.w, 130.0.w, 0.w),
            child: GestureDetector(
              onTap: () {
                // if (!_formKey.currentState!.validate()) {
                //   _formKey.currentState!.save();
                // } else {}
              },
              child: Container(
                width: 115.w,
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
                    'Verify OTP',
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
          Padding(
            padding: EdgeInsets.fromLTRB(23.w, 40.w, 23.0.w, 0.w),
            child:RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Note: ',
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 14.sp,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.w700,
                    height: 1.3),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Unable to access your OTP? Please check your spam/promotions folder! For futher assistance, please contact ',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'MontserratReg',
                          fontSize: 12.sp,
                          letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w400,
                          height: 1),),
                  TextSpan(text: 'support@biglee.com',style:TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 14.sp,
                      letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w700,
                      height: 1.3), ),
                  TextSpan(text: ' so our Team can reslove this for you.',style:TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'MontserratReg',
                      fontSize: 12.sp,
                      letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w400,
                      height: 1.3), ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
