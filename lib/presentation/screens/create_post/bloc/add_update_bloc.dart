// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:io' ;

import 'package:admin_movie/data/extension/toast.dart';
import 'package:admin_movie/di/dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/movies_response.dart';
import '../../../../domain/usecase/create_movie_usercase.dart';
import '../../../../domain/usecase/update_movie_usecase.dart';
import '../../../routes/routes.gr.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'add_update_bloc.freezed.dart';
part 'add_update_event.dart';
part 'add_update_state.dart';

@injectable
class AddUpdateBloc extends Bloc<AddUpdateEvent, AddUpdateState> {
  final UpdateMovieUsecase _updateMovieUsecase;
  final CreateMovieUsecase _createMovieUsecase;
  AddUpdateBloc(this._createMovieUsecase, this._updateMovieUsecase)
      : super(const AddUpdateState.initial()) {
    on<_AddMovie>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess =
          await _createMovieUsecase(event.movie, event.image);

      failureOrSuccess.fold((failure) {
        emit(AddUpdateState.failed(message: failure.message));
        getIt<AppRouter>()
            .context
            .showToast(' ${failure.message}', isError: true);
      }, (_) {
        emit(const AddUpdateState.saved());
        getIt<AppRouter>().push( HomeRoute(idScreen: 0));
        getIt<AppRouter>().context.showToast(' Movie Create Successfully.');
      });
    });

    on<_UpdateMovie>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess =
          await _updateMovieUsecase(event.movie, event.movieId);

      failureOrSuccess.fold((failure) {
        emit(AddUpdateState.failed(message: failure.message));
        getIt<AppRouter>()
            .context
            .showToast('  ${failure.message}', isError: true);
      }, (_) {
        emit(const AddUpdateState.saved());
        getIt<AppRouter>().push(HomeRoute(idScreen: 0));
        getIt<AppRouter>().context.showToast('Movie Updated Successfully.');
      });
    });
  }
}
