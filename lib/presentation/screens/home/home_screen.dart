import 'package:admin_movie/presentation/screens/create_post/create_and_edit_screen.dart';
import 'package:admin_movie/presentation/screens/posts/posts_screen.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/movies_response.dart';
import 'side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.idScreen = 0, this.movie}) : super(key: key);
  final int idScreen;
  final Movie? movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideMenu(),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(child: SideMenu()),
            Expanded(
                flex: 5,
                child: idScreen == 0
                    ? const PostsScreen()
                    : CreateAndEditPostScreen(movie: movie))
          ],
        ));
  }
}
