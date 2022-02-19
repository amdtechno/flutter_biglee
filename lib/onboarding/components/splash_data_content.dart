import 'package:siam_biglee/const/packages.dart';

class OnboardTextClass extends StatelessWidget {
  const OnboardTextClass({
    Key? key,
    required this.headertext,
    required this.descriptiontext,
  }) : super(key: key);
  final String headertext;
  final String descriptiontext;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 381.h,
          left: 39.w,
          right: 34.w,
          child: Container(
            height: 27.h,
            width: 302.w,
            child: Center(
              child: Text(
                headertext,
                textAlign: TextAlign.left,
                textScaleFactor: ScreenUtil().scaleText,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 22.sm,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.w700,
                    height: 1),
              ),
            ),
          ),
        ),
        Positioned(
            top: 410.h,
            left: 146.w,
            right: 141.w,
            bottom: 254.h,
            child: Divider(
              color: Color.fromRGBO(232, 56, 56, 1),
              thickness: 2,
            )),
        Positioned(
          top: 429.h,
          left: 23.w,
          right: 23.w,
          bottom: 141.h,
          child: Text(
            descriptiontext,
            textAlign: TextAlign.center,
            textScaleFactor: ScreenUtil().scaleText,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 16.sp,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.w500,
                height: 1),
          ),
        ),
      ],
    );
  }
}