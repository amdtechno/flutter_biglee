import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';


class SkeletonContainer extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const SkeletonContainer._({
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = const BorderRadius.all(Radius.circular(6)),
    Key? key,
  }) : super(key: key);

  const SkeletonContainer.square({
    required double width,
    required double height,
  }) : this._(width: width, height: height);

  @override
  Widget build(BuildContext context) => SkeletonAnimation(
    //gradientColor: Colors.orange,
    //shimmerColor: Colors.red,
    curve: Curves.easeInOut,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: borderRadius,
      ),
    ),
  );
}