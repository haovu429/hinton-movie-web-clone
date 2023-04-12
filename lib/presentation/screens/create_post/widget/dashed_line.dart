import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    const cardRadius = 10.0;
    return DottedBorder(
        color: Colors.black,
        strokeWidth: 1,
        radius: const Radius.circular(cardRadius),
        dashPattern: const [10, 5],
        customPath: (size) {
          return Path()
            ..moveTo(cardRadius, 0)
            ..lineTo(size.width - cardRadius, 0)
            ..arcToPoint(Offset(size.width, cardRadius),
                radius: const Radius.circular(cardRadius))
            ..lineTo(size.width, size.height - cardRadius)
            ..arcToPoint(Offset(size.width - cardRadius, size.height),
                radius: const Radius.circular(cardRadius))
            ..lineTo(cardRadius, size.height)
            ..arcToPoint(Offset(0, size.height - cardRadius),
                radius: const Radius.circular(cardRadius))
            ..lineTo(0, cardRadius)
            ..arcToPoint(const Offset(cardRadius, 0),
                radius: const Radius.circular(cardRadius));
        },
        child: child);
  }
}
