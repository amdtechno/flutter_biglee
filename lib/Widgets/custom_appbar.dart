import 'package:siam_biglee/const/packages.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String leadingicon;
  VoidCallback  press;
  CustomAppBar({
    Key? key, required this.title, required this.leadingicon, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 23.0.w, top:27.34.w,
          child: GestureDetector(
            onTap: press,
            child: Container(
              height: 20.w,
              width: 20.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(leadingicon),
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ),
        Positioned(
          left: 170.0.w, top:8.34.w,
          child: Container(
            height: 36.0.w,
            width: 33.46.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/biglee.png'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          left: 149.0.w, top:45.66.w,
          child: Container(
            height: 12.w,
            width: 78.w,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(title, textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'MontserratMed',
                  fontSize: 10.sp,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w500,
                  height: 1
              ),),
            ),
          ),
        ),
        Positioned(
          left: 295.0.w, top:24.91.w,
          child: Container(
            height: 18.66.w,
            width: 20.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/chatappbar.png'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          left: 333.69.w, top:24.91.w,
          child: Container(
            height: 18.66.w,
            width: 20.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/notification.png'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}