part of 'add_update_bloc.dart';

@freezed
class AddUpdateEvent with _$AddUpdateEvent {
  const factory AddUpdateEvent.addMovie(Movie movie, File image) = _AddMovie;

  const factory AddUpdateEvent.updateMovie(Movie movie, int movieId) =
      _UpdateMovie;
}
