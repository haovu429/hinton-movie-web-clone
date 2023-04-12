import 'package:admin_movie/domain/usecase/get_list_movie_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/movies_response.dart';

part 'posts_bloc.freezed.dart';
part 'posts_state.dart';
part 'posts_event.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetListMovieUsecase _getListMovieUsecase;
  PostsBloc(this._getListMovieUsecase) : super(const PostsState.initial()) {
    on<_GetAllPosts>((event, emit) async {
      emit(const PostsState.loading());

      final failureOrSuccess = await _getListMovieUsecase();
      failureOrSuccess.fold((l) => emit(PostsState.error(message: l.message)),
          (r) => emit(PostsState.loaded(r)));
    });
  }
}
