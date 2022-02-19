import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:siam_biglee/const/packages.dart';

void main() {
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) =>
        const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',

      home: SplashScreen(),
    );
  }
}
