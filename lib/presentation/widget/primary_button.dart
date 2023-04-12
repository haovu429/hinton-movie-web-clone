import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final EdgeInsets? padding;
  final bool enable;
  final EdgeInsets? margin;
  final double? height;
  final double? width;

  final Widget? prefix;
  final EdgeInsets prefixPadding;
  final TextStyle? textStyle;
  final Color? disableBackgroundColor;
  final double? radius;
  final Color? enableBackgroundColor;
  final Color borderColor;
  final Color? backgroundColor;
  final Alignment? alignment;

  const PrimaryButton(
      {Key? key,
      this.onPressed,
      this.text,
      this.padding,
      this.enable = true,
      this.margin,
      this.height,
      this.enableBackgroundColor,
      this.disableBackgroundColor,
      this.prefixPadding = EdgeInsets.zero,
      this.radius,
      this.textStyle,
      this.borderColor = Colors.transparent,
      this.prefix,
      this.backgroundColor,
      this.alignment,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enable) {
          onPressed?.call();
        }
      },
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(radius ?? 10.r)),
          padding: padding ?? EdgeInsets.only(top: 0.h, bottom: 0.h),
          alignment: alignment ?? Alignment.center,
          margin: margin ?? const EdgeInsets.all(1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: prefixPadding, child: prefix ?? const SizedBox()),
              Text(
                text ?? "",
                style: textStyle ??
                    Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.white, fontSize: 20.sp),
              )
            ],
          )),
    );
  }
}
