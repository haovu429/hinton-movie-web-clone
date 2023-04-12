// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddUpdateEvent {
  Movie get movie => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie, File image) addMovie,
    required TResult Function(Movie movie, int movieId) updateMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie, File image)? addMovie,
    TResult? Function(Movie movie, int movieId)? updateMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie, File image)? addMovie,
    TResult Function(Movie movie, int movieId)? updateMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMovie value) addMovie,
    required TResult Function(_UpdateMovie value) updateMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMovie value)? addMovie,
    TResult? Function(_UpdateMovie value)? updateMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMovie value)? addMovie,
    TResult Function(_UpdateMovie value)? updateMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUpdateEventCopyWith<AddUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateEventCopyWith<$Res> {
  factory $AddUpdateEventCopyWith(
          AddUpdateEvent value, $Res Function(AddUpdateEvent) then) =
      _$AddUpdateEventCopyWithImpl<$Res, AddUpdateEvent>;
  @useResult
  $Res call({Movie movie});
}

/// @nodoc
class _$AddUpdateEventCopyWithImpl<$Res, $Val extends AddUpdateEvent>
    implements $AddUpdateEventCopyWith<$Res> {
  _$AddUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddMovieCopyWith<$Res>
    implements $AddUpdateEventCopyWith<$Res> {
  factory _$$_AddMovieCopyWith(
          _$_AddMovie value, $Res Function(_$_AddMovie) then) =
      __$$_AddMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Movie movie, File image});
}

/// @nodoc
class __$$_AddMovieCopyWithImpl<$Res>
    extends _$AddUpdateEventCopyWithImpl<$Res, _$_AddMovie>
    implements _$$_AddMovieCopyWith<$Res> {
  __$$_AddMovieCopyWithImpl(
      _$_AddMovie _value, $Res Function(_$_AddMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? image = null,
  }) {
    return _then(_$_AddMovie(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_AddMovie implements _AddMovie {
  const _$_AddMovie(this.movie, this.image);

  @override
  final Movie movie;
  @override
  final File image;

  @override
  String toString() {
    return 'AddUpdateEvent.addMovie(movie: $movie, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMovie &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMovieCopyWith<_$_AddMovie> get copyWith =>
      __$$_AddMovieCopyWithImpl<_$_AddMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie, File image) addMovie,
    required TResult Function(Movie movie, int movieId) updateMovie,
  }) {
    return addMovie(movie, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie, File image)? addMovie,
    TResult? Function(Movie movie, int movieId)? updateMovie,
  }) {
    return addMovie?.call(movie, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie, File image)? addMovie,
    TResult Function(Movie movie, int movieId)? updateMovie,
    required TResult orElse(),
  }) {
    if (addMovie != null) {
      return addMovie(movie, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMovie value) addMovie,
    required TResult Function(_UpdateMovie value) updateMovie,
  }) {
    return addMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMovie value)? addMovie,
    TResult? Function(_UpdateMovie value)? updateMovie,
  }) {
    return addMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMovie value)? addMovie,
    TResult Function(_UpdateMovie value)? updateMovie,
    required TResult orElse(),
  }) {
    if (addMovie != null) {
      return addMovie(this);
    }
    return orElse();
  }
}

abstract class _AddMovie implements AddUpdateEvent {
  const factory _AddMovie(final Movie movie, final File image) = _$_AddMovie;

  @override
  Movie get movie;
  File get image;
  @override
  @JsonKey(ignore: true)
  _$$_AddMovieCopyWith<_$_AddMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateMovieCopyWith<$Res>
    implements $AddUpdateEventCopyWith<$Res> {
  factory _$$_UpdateMovieCopyWith(
          _$_UpdateMovie value, $Res Function(_$_UpdateMovie) then) =
      __$$_UpdateMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Movie movie, int movieId});
}

/// @nodoc
class __$$_UpdateMovieCopyWithImpl<$Res>
    extends _$AddUpdateEventCopyWithImpl<$Res, _$_UpdateMovie>
    implements _$$_UpdateMovieCopyWith<$Res> {
  __$$_UpdateMovieCopyWithImpl(
      _$_UpdateMovie _value, $Res Function(_$_UpdateMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? movieId = null,
  }) {
    return _then(_$_UpdateMovie(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateMovie implements _UpdateMovie {
  const _$_UpdateMovie(this.movie, this.movieId);

  @override
  final Movie movie;
  @override
  final int movieId;

  @override
  String toString() {
    return 'AddUpdateEvent.updateMovie(movie: $movie, movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateMovie &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateMovieCopyWith<_$_UpdateMovie> get copyWith =>
      __$$_UpdateMovieCopyWithImpl<_$_UpdateMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie, File image) addMovie,
    required TResult Function(Movie movie, int movieId) updateMovie,
  }) {
    return updateMovie(movie, movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie, File image)? addMovie,
    TResult? Function(Movie movie, int movieId)? updateMovie,
  }) {
    return updateMovie?.call(movie, movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie, File image)? addMovie,
    TResult Function(Movie movie, int movieId)? updateMovie,
    required TResult orElse(),
  }) {
    if (updateMovie != null) {
      return updateMovie(movie, movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMovie value) addMovie,
    required TResult Function(_UpdateMovie value) updateMovie,
  }) {
    return updateMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMovie value)? addMovie,
    TResult? Function(_UpdateMovie value)? updateMovie,
  }) {
    return updateMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMovie value)? addMovie,
    TResult Function(_UpdateMovie value)? updateMovie,
    required TResult orElse(),
  }) {
    if (updateMovie != null) {
      return updateMovie(this);
    }
    return orElse();
  }
}

abstract class _UpdateMovie implements AddUpdateEvent {
  const factory _UpdateMovie(final Movie movie, final int movieId) =
      _$_UpdateMovie;

  @override
  Movie get movie;
  int get movieId;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateMovieCopyWith<_$_UpdateMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateStateCopyWith<$Res> {
  factory $AddUpdateStateCopyWith(
          AddUpdateState value, $Res Function(AddUpdateState) then) =
      _$AddUpdateStateCopyWithImpl<$Res, AddUpdateState>;
}

/// @nodoc
class _$AddUpdateStateCopyWithImpl<$Res, $Val extends AddUpdateState>
    implements $AddUpdateStateCopyWith<$Res> {
  _$AddUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddUpdateStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AddUpdateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddUpdateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$AddUpdateStateCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AddUpdateState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AddUpdateState {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$$_SavingCopyWith<$Res> {
  factory _$$_SavingCopyWith(_$_Saving value, $Res Function(_$_Saving) then) =
      __$$_SavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavingCopyWithImpl<$Res>
    extends _$AddUpdateStateCopyWithImpl<$Res, _$_Saving>
    implements _$$_SavingCopyWith<$Res> {
  __$$_SavingCopyWithImpl(_$_Saving _value, $Res Function(_$_Saving) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saving implements _Saving {
  const _$_Saving();

  @override
  String toString() {
    return 'AddUpdateState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements AddUpdateState {
  const factory _Saving() = _$_Saving;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$AddUpdateStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failed(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AddUpdateState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AddUpdateState {
  const factory _Failed({final String? message}) = _$_Failed;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
