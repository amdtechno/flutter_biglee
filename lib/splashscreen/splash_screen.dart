import 'package:siam_biglee/const/packages.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Container(
      width: 375.w,
      height: 670.w,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 199.w,
            left: 61.w,
            right: 60.91.w,
            bottom: 198.66.w,
            child: SvgPicture.asset('assets/images/biglee.svg',
                semanticsLabel: 'biglee'),
          ),
        ],
      ),
    );
  }
}
