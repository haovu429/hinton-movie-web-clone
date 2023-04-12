import 'package:admin_movie/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormTextField extends StatelessWidget {
  const FormTextField(
      {Key? key,
      this.placeholder,
      this.securityText = false,
      this.controller,
      this.onTap,
      this.onChanged,
      this.enable = true,
      this.colorBorderSide})
      : super(key: key);
  final String? placeholder;
  final bool securityText;
  final TextEditingController? controller;
  final Color? colorBorderSide;
  final Function()? onTap;
  final Function(String)? onChanged;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enable,
      controller: controller,
      obscureText: securityText,
      decoration: InputDecoration(
          hintText: placeholder,
          filled: true,
          fillColor: AppColors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: colorBorderSide ?? AppColors.white),
              borderRadius: BorderRadius.circular(10.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: colorBorderSide ?? AppColors.white),
              borderRadius: BorderRadius.circular(10.r))),
      onTap:() async => onTap?.call(),
      onChanged: (value)=> onChanged?.call(value)
    );
  }
}
