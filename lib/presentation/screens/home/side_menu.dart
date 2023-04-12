import 'package:admin_movie/common/strings.dart';
import 'package:admin_movie/presentation/theme/colors.dart';
import 'package:admin_movie/presentation/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/dependency_injection.dart';
import '../../routes/routes.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.description,
      child: ListView(
        children: [
          Text(
            AppStrings.menu,
            style: AppTypography.title.copyWith(fontSize: 20.sp),
          ),
          DrawerListTile(
            title: "Post",
            press: () {
              getIt<AppRouter>().pop(HomeRoute());
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: AppTypography.textButton,
      ),
    );
  }
}
