// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/colors.dart';


class BuildShowDateTimeField extends StatelessWidget {
  const BuildShowDateTimeField(
      {Key? key,
      String placeholder = '',
      required TextEditingController showDateController,
       Function(String)? onChanged,
      Function()? onTap})
      : _showDateController = showDateController,
      _onChanged = onChanged,
        _onTap = onTap,
        _placeholder = placeholder,
        super(key: key);
  final Function()? _onTap;
  final Function(String)? _onChanged;
  final String _placeholder;
  final TextEditingController _showDateController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _showDateController,
      decoration: InputDecoration(
          hintText: _placeholder,
          filled: true,
          fillColor: AppColors.white,
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.borderSide),
              borderRadius: BorderRadius.circular(10.r)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.borderSide),
              borderRadius: BorderRadius.circular(10.r))),
      onTap: () async => _onTap?.call(),
      onChanged: (value) => _onChanged?.call(value)
    );
  }
}
