import 'package:admin_movie/common/strings.dart';
import 'package:admin_movie/presentation/screens/login/bloc/login_bloc.dart';
import 'package:admin_movie/presentation/widget/primary_button.dart';
import 'package:admin_movie/presentation/widget/text_field.dart';
import 'package:admin_movie/presentation/widget/vertical_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/dependency_injection.dart';
import '../../routes/routes.dart';
import '../../theme/colors.dart';
import '../../theme/typography.dart';

class LoginBlocScreen extends StatefulWidget {
  const LoginBlocScreen({super.key});

  @override
  State<LoginBlocScreen> createState() => _LoginBlocScreenState();
}

class _LoginBlocScreenState extends State<LoginBlocScreen> {
  late TextEditingController usernameTextEditController;
  late TextEditingController passwordTextEditController;
  @override
  void initState() {
    super.initState();

    usernameTextEditController = TextEditingController(text: '');
    passwordTextEditController =
        TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return LoginScreen(
        state: state,
        usernameTextEditController: usernameTextEditController,
        passwordTextEditController: passwordTextEditController,
      );
    });
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen(
      {super.key,
      required this.state,
      required this.usernameTextEditController,
      required this.passwordTextEditController});
  final LoginState state;
  final TextEditingController usernameTextEditController;
  final TextEditingController passwordTextEditController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        body: Center(
          child: Container(
            width: 400.w,
            height: 400.h,
            decoration: BoxDecoration(
                color: AppColors.backgroundLogin,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: const [
                  BoxShadow(
                      color: AppColors.backgroundLogin,
                      blurRadius: 0.2,
                      spreadRadius: 1)
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.login,
                        style: AppTypography.title.copyWith(fontSize: 20.sp)),
                    VerticalSpace(80.h),
                    FormTextField(
                        controller: usernameTextEditController,
                        placeholder: AppStrings.placeholderUsername),
                    VerticalSpace(40.h),
                    FormTextField(
                        controller: passwordTextEditController,
                        securityText: true,
                        placeholder: AppStrings.placeholderPassword),
                    VerticalSpace(20.h),
                    PrimaryButton(
                        onPressed: () => context.read<LoginBloc>().add(
                            LoginEvent.login(usernameTextEditController.text,
                                passwordTextEditController.text)),
                        height: 45.h,
                        width: 175.w,
                        backgroundColor: AppColors.info,
                        radius: 20.r,
                        text: AppStrings.signin)
                  ]),
            ),
          ),
        ));
  }
}
