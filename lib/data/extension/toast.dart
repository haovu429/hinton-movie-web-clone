import 'package:flutter/material.dart';

import '../../presentation/routes/routes.gr.dart';
import '../../presentation/theme/colors.dart';
import '../../presentation/theme/typography.dart';

extension ContextEx on BuildContext {
  void showToast(
    String message, {
    bool isError = false,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTypography.description.copyWith(color: AppColors.white),
        ),
        backgroundColor: isError ? AppColors.error : AppColors.success,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

extension AppRouterEx on AppRouter {
  BuildContext get context => navigatorKey.currentContext!;
}