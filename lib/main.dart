import 'package:admin_movie/data/extension/session_manager.dart';
import 'package:admin_movie/observer.dart';
import 'package:admin_movie/presentation/screens/create_post/bloc/add_update_bloc.dart';
import 'package:admin_movie/presentation/screens/create_post/bloc/create_and_edit_bloc.dart';
import 'package:admin_movie/presentation/screens/create_post/ticket/ticket_bloc.dart';
import 'package:admin_movie/presentation/screens/login/bloc/login_bloc.dart';
import 'package:admin_movie/presentation/screens/posts/bloc/posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'di/dependency_injection.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  //* inject dependencies
  bool isLoggedIn = await SessionManager.share.getToken() !=null;
  configureInjection();
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<LoginBloc>()),
      BlocProvider(create: (_)=> getIt<PostsBloc>()..add( const PostsEvent.getAllPosts())),
      BlocProvider<CreateAndEditBloc>(create: (_)=> getIt<CreateAndEditBloc>()),
      BlocProvider<AddUpdateBloc>(create: (_)=> getIt<AddUpdateBloc>()),
      BlocProvider<TicketBloc>(create: (_) => getIt<TicketBloc>())
      ],
      child: App(isLoggedIn: isLoggedIn)));
}
// flutter run -d chrome --web-port=21690  