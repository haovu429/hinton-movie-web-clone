import 'package:admin_movie/common/strings.dart';
import 'package:admin_movie/di/dependency_injection.dart';
import 'package:admin_movie/presentation/routes/routes.dart';
import 'package:admin_movie/presentation/screens/posts/bloc/posts_bloc.dart';
import 'package:admin_movie/presentation/widget/vertical_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors.dart';
import '../../theme/typography.dart';
import '../../widget/error_text.dart';
import '../../widget/primary_button.dart';
import '../home/widget/data_table_post.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  void initState() {
    BlocProvider.of<PostsBloc>(context).add(const PostsEvent.getAllPosts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) => Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
            primary: false,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: state.maybeMap(
              error: (error) => ErrorText(error.message ?? ''),
              orElse: () => const SizedBox.shrink(),
              loaded: (data) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings.listMovieTitle,
                          style: AppTypography.headline5),
                      PrimaryButton(
                        onPressed: () =>
                            context.router.push(HomeRoute(idScreen: 1)),
                        height: 40.h,
                        width: 100.w,
                        backgroundColor: AppColors.description,
                        text: AppStrings.create,
                      )
                    ],
                  ),
                  VerticalSpace(30.h),
                  TablePosts(movies: data.movies)
                ],
              ),
            )),
      ),
    );
  }
}
