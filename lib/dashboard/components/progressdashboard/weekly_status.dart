import 'package:siam_biglee/const/packages.dart';

class WeeklyStatus extends StatefulWidget {
  const WeeklyStatus({Key? key}) : super(key: key);

  @override
  _WeeklyStatusState createState() => _WeeklyStatusState();
}

class _WeeklyStatusState extends State<WeeklyStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 23.0.w,top: 32.0.w),
          child: Container(
            height: 47.w,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 4,
                // padding: EdgeInsets.fromLTRB(13.0.w, 0.0.w, 0.0.w, 0.0.w),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(13.0.w, 0.0.w, 0.0.w, 0.0.w),
                    child: Container(
                        width: 47.w,
                        height: 47.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          color: Color.fromRGBO(232, 56, 56, 1),
                        )),
                  );
                }),
          ),
        )
      ],
    );
  }
}
