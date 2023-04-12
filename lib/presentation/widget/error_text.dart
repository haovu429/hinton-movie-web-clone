import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/typography.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(this.message, {Key? key}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: AppTypography.title.copyWith(
          color: AppColors.description,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
