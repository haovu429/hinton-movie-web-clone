// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        $default, {
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TicketState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicketState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicketState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
          TicketState value, $Res Function(TicketState) then) =
      _$TicketStateCopyWithImpl<$Res, TicketState>;
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TicketStateCopyWith<$Res> {
  factory _$$_TicketStateCopyWith(
          _$_TicketState value, $Res Function(_$_TicketState) then) =
      __$$_TicketStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String price, String ticketDate, String ticketTime, String? website});
}

/// @nodoc
class __$$_TicketStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketState>
    implements _$$_TicketStateCopyWith<$Res> {
  __$$_TicketStateCopyWithImpl(
      _$_TicketState _value, $Res Function(_$_TicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? ticketDate = null,
    Object? ticketTime = null,
    Object? website = freezed,
  }) {
    return _then(_$_TicketState(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      ticketDate: null == ticketDate
          ? _value.ticketDate
          : ticketDate // ignore: cast_nullable_to_non_nullable
              as String,
      ticketTime: null == ticketTime
          ? _value.ticketTime
          : ticketTime // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TicketState extends _TicketState {
  _$_TicketState(
      {required this.price,
      required this.ticketDate,
      required this.ticketTime,
      this.website})
      : super._();

  @override
  final String price;
  @override
  final String ticketDate;
  @override
  final String ticketTime;
  @override
  final String? website;

  @override
  String toString() {
    return 'TicketState(price: $price, ticketDate: $ticketDate, ticketTime: $ticketTime, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketState &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ticketDate, ticketDate) ||
                other.ticketDate == ticketDate) &&
            (identical(other.ticketTime, ticketTime) ||
                other.ticketTime == ticketTime) &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, price, ticketDate, ticketTime, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketStateCopyWith<_$_TicketState> get copyWith =>
      __$$_TicketStateCopyWithImpl<_$_TicketState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        $default, {
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return $default(price, ticketDate, ticketTime, website);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return $default?.call(price, ticketDate, ticketTime, website);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(price, ticketDate, ticketTime, website);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TicketState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicketState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicketState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TicketState extends TicketState {
  factory _TicketState(
      {required final String price,
      required final String ticketDate,
      required final String ticketTime,
      final String? website}) = _$_TicketState;
  _TicketState._() : super._();

  String get price;
  String get ticketDate;
  String get ticketTime;
  String? get website;
  @JsonKey(ignore: true)
  _$$_TicketStateCopyWith<_$_TicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'TicketState.initial()';
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        $default, {
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
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
  TResult map<TResult extends Object?>(
    TResult Function(_TicketState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicketState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicketState value)? $default, {
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

abstract class _Initial extends TicketState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved extends _Saved {
  const _$_Saved() : super._();

  @override
  String toString() {
    return 'TicketState.saved()';
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        $default, {
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
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
  TResult map<TResult extends Object?>(
    TResult Function(_TicketState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicketState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicketState value)? $default, {
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

abstract class _Saved extends TicketState {
  const factory _Saved() = _$_Saved;
  const _Saved._() : super._();
}

/// @nodoc
abstract class _$$_SavingCopyWith<$Res> {
  factory _$$_SavingCopyWith(_$_Saving value, $Res Function(_$_Saving) then) =
      __$$_SavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavingCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_Saving>
    implements _$$_SavingCopyWith<$Res> {
  __$$_SavingCopyWithImpl(_$_Saving _value, $Res Function(_$_Saving) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saving extends _Saving {
  const _$_Saving() : super._();

  @override
  String toString() {
    return 'TicketState.saving()';
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        $default, {
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
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
  TResult map<TResult extends Object?>(
    TResult Function(_TicketState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicketState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicketState value)? $default, {
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

abstract class _Saving extends TicketState {
  const factory _Saving() = _$_Saving;
  const _Saving._() : super._();
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
    extends _$TicketStateCopyWithImpl<$Res, _$_Failed>
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

class _$_Failed extends _Failed {
  const _$_Failed({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'TicketState.failed(message: $message)';
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        $default, {
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        $default, {
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
  TResult map<TResult extends Object?>(
    TResult Function(_TicketState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicketState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicketState value)? $default, {
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

abstract class _Failed extends TicketState {
  const factory _Failed({final String? message}) = _$_Failed;
  const _Failed._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEventCopyWith<$Res> {
  factory $TicketEventCopyWith(
          TicketEvent value, $Res Function(TicketEvent) then) =
      _$TicketEventCopyWithImpl<$Res, TicketEvent>;
}

/// @nodoc
class _$TicketEventCopyWithImpl<$Res, $Val extends TicketEvent>
    implements $TicketEventCopyWith<$Res> {
  _$TicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String price, String ticketDate, String ticketTime, String? website});
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? ticketDate = null,
    Object? ticketTime = null,
    Object? website = freezed,
  }) {
    return _then(_$_Initialize(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      ticketDate: null == ticketDate
          ? _value.ticketDate
          : ticketDate // ignore: cast_nullable_to_non_nullable
              as String,
      ticketTime: null == ticketTime
          ? _value.ticketTime
          : ticketTime // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize(
      {required this.price,
      required this.ticketDate,
      required this.ticketTime,
      this.website});

  @override
  final String price;
  @override
  final String ticketDate;
  @override
  final String ticketTime;
  @override
  final String? website;

  @override
  String toString() {
    return 'TicketEvent.initialize(price: $price, ticketDate: $ticketDate, ticketTime: $ticketTime, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialize &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ticketDate, ticketDate) ||
                other.ticketDate == ticketDate) &&
            (identical(other.ticketTime, ticketTime) ||
                other.ticketTime == ticketTime) &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, price, ticketDate, ticketTime, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      __$$_InitializeCopyWithImpl<_$_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return initialize(price, ticketDate, ticketTime, website);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return initialize?.call(price, ticketDate, ticketTime, website);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(price, ticketDate, ticketTime, website);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements TicketEvent {
  const factory _Initialize(
      {required final String price,
      required final String ticketDate,
      required final String ticketTime,
      final String? website}) = _$_Initialize;

  String get price;
  String get ticketDate;
  String get ticketTime;
  String? get website;
  @JsonKey(ignore: true)
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeDateCopyWith<$Res> {
  factory _$$_ChangeDateCopyWith(
          _$_ChangeDate value, $Res Function(_$_ChangeDate) then) =
      __$$_ChangeDateCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChangeDateCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_ChangeDate>
    implements _$$_ChangeDateCopyWith<$Res> {
  __$$_ChangeDateCopyWithImpl(
      _$_ChangeDate _value, $Res Function(_$_ChangeDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangeDate(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeDate implements _ChangeDate {
  const _$_ChangeDate(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TicketEvent.changeDate(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDate &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDateCopyWith<_$_ChangeDate> get copyWith =>
      __$$_ChangeDateCopyWithImpl<_$_ChangeDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return changeDate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return changeDate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDate implements TicketEvent {
  const factory _ChangeDate(final String value) = _$_ChangeDate;

  String get value;
  @JsonKey(ignore: true)
  _$$_ChangeDateCopyWith<_$_ChangeDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTimeCopyWith<$Res> {
  factory _$$_ChangeTimeCopyWith(
          _$_ChangeTime value, $Res Function(_$_ChangeTime) then) =
      __$$_ChangeTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChangeTimeCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_ChangeTime>
    implements _$$_ChangeTimeCopyWith<$Res> {
  __$$_ChangeTimeCopyWithImpl(
      _$_ChangeTime _value, $Res Function(_$_ChangeTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangeTime(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeTime implements _ChangeTime {
  const _$_ChangeTime(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TicketEvent.changeTime(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTime &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTimeCopyWith<_$_ChangeTime> get copyWith =>
      __$$_ChangeTimeCopyWithImpl<_$_ChangeTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return changeTime(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return changeTime?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (changeTime != null) {
      return changeTime(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return changeTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return changeTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (changeTime != null) {
      return changeTime(this);
    }
    return orElse();
  }
}

abstract class _ChangeTime implements TicketEvent {
  const factory _ChangeTime(final String value) = _$_ChangeTime;

  String get value;
  @JsonKey(ignore: true)
  _$$_ChangeTimeCopyWith<_$_ChangeTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePriceCopyWith<$Res> {
  factory _$$_ChangePriceCopyWith(
          _$_ChangePrice value, $Res Function(_$_ChangePrice) then) =
      __$$_ChangePriceCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChangePriceCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_ChangePrice>
    implements _$$_ChangePriceCopyWith<$Res> {
  __$$_ChangePriceCopyWithImpl(
      _$_ChangePrice _value, $Res Function(_$_ChangePrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangePrice(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePrice implements _ChangePrice {
  const _$_ChangePrice(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TicketEvent.changePrice(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePrice &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePriceCopyWith<_$_ChangePrice> get copyWith =>
      __$$_ChangePriceCopyWithImpl<_$_ChangePrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return changePrice(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return changePrice?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (changePrice != null) {
      return changePrice(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return changePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return changePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (changePrice != null) {
      return changePrice(this);
    }
    return orElse();
  }
}

abstract class _ChangePrice implements TicketEvent {
  const factory _ChangePrice(final String value) = _$_ChangePrice;

  String get value;
  @JsonKey(ignore: true)
  _$$_ChangePriceCopyWith<_$_ChangePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLinkCopyWith<$Res> {
  factory _$$_ChangeLinkCopyWith(
          _$_ChangeLink value, $Res Function(_$_ChangeLink) then) =
      __$$_ChangeLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChangeLinkCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_ChangeLink>
    implements _$$_ChangeLinkCopyWith<$Res> {
  __$$_ChangeLinkCopyWithImpl(
      _$_ChangeLink _value, $Res Function(_$_ChangeLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChangeLink(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLink implements _ChangeLink {
  const _$_ChangeLink(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TicketEvent.changeLink(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLink &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLinkCopyWith<_$_ChangeLink> get copyWith =>
      __$$_ChangeLinkCopyWithImpl<_$_ChangeLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return changeLink(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return changeLink?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (changeLink != null) {
      return changeLink(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return changeLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return changeLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (changeLink != null) {
      return changeLink(this);
    }
    return orElse();
  }
}

abstract class _ChangeLink implements TicketEvent {
  const factory _ChangeLink(final String value) = _$_ChangeLink;

  String get value;
  @JsonKey(ignore: true)
  _$$_ChangeLinkCopyWith<_$_ChangeLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearTicketCopyWith<$Res> {
  factory _$$_ClearTicketCopyWith(
          _$_ClearTicket value, $Res Function(_$_ClearTicket) then) =
      __$$_ClearTicketCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearTicketCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_ClearTicket>
    implements _$$_ClearTicketCopyWith<$Res> {
  __$$_ClearTicketCopyWithImpl(
      _$_ClearTicket _value, $Res Function(_$_ClearTicket) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearTicket implements _ClearTicket {
  const _$_ClearTicket();

  @override
  String toString() {
    return 'TicketEvent.clearMovie()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearTicket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return clearMovie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return clearMovie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (clearMovie != null) {
      return clearMovie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return clearMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return clearMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (clearMovie != null) {
      return clearMovie(this);
    }
    return orElse();
  }
}

abstract class _ClearTicket implements TicketEvent {
  const factory _ClearTicket() = _$_ClearTicket;
}

/// @nodoc
abstract class _$$_SaveTicketCopyWith<$Res> {
  factory _$$_SaveTicketCopyWith(
          _$_SaveTicket value, $Res Function(_$_SaveTicket) then) =
      __$$_SaveTicketCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_SaveTicketCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_SaveTicket>
    implements _$$_SaveTicketCopyWith<$Res> {
  __$$_SaveTicketCopyWithImpl(
      _$_SaveTicket _value, $Res Function(_$_SaveTicket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SaveTicket(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SaveTicket implements _SaveTicket {
  const _$_SaveTicket(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'TicketEvent.saveMovie(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTicket &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTicketCopyWith<_$_SaveTicket> get copyWith =>
      __$$_SaveTicketCopyWithImpl<_$_SaveTicket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String price, String ticketDate, String ticketTime, String? website)
        initialize,
    required TResult Function(String value) changeDate,
    required TResult Function(String value) changeTime,
    required TResult Function(String value) changePrice,
    required TResult Function(String value) changeLink,
    required TResult Function() clearMovie,
    required TResult Function(int? id) saveMovie,
  }) {
    return saveMovie(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult? Function(String value)? changeDate,
    TResult? Function(String value)? changeTime,
    TResult? Function(String value)? changePrice,
    TResult? Function(String value)? changeLink,
    TResult? Function()? clearMovie,
    TResult? Function(int? id)? saveMovie,
  }) {
    return saveMovie?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String price, String ticketDate, String ticketTime,
            String? website)?
        initialize,
    TResult Function(String value)? changeDate,
    TResult Function(String value)? changeTime,
    TResult Function(String value)? changePrice,
    TResult Function(String value)? changeLink,
    TResult Function()? clearMovie,
    TResult Function(int? id)? saveMovie,
    required TResult orElse(),
  }) {
    if (saveMovie != null) {
      return saveMovie(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_ChangeLink value) changeLink,
    required TResult Function(_ClearTicket value) clearMovie,
    required TResult Function(_SaveTicket value) saveMovie,
  }) {
    return saveMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_ChangeLink value)? changeLink,
    TResult? Function(_ClearTicket value)? clearMovie,
    TResult? Function(_SaveTicket value)? saveMovie,
  }) {
    return saveMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_ChangeLink value)? changeLink,
    TResult Function(_ClearTicket value)? clearMovie,
    TResult Function(_SaveTicket value)? saveMovie,
    required TResult orElse(),
  }) {
    if (saveMovie != null) {
      return saveMovie(this);
    }
    return orElse();
  }
}

abstract class _SaveTicket implements TicketEvent {
  const factory _SaveTicket(final int? id) = _$_SaveTicket;

  int? get id;
  @JsonKey(ignore: true)
  _$$_SaveTicketCopyWith<_$_SaveTicket> get copyWith =>
      throw _privateConstructorUsedError;
}
