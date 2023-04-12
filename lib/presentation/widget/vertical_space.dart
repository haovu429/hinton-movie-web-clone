
import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  final double value;
  final Color? color;

  const VerticalSpace(this.value, {Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: value,
    );
  }
}
