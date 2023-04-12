import 'dart:io';

import 'package:admin_movie/data/extension/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import '../../../../di/dependency_injection.dart';
import '../../../routes/routes.dart';

part 'create_and_edit_bloc.freezed.dart';
part 'create_and_edit_event.dart';
part 'create_and_edit_state.dart';

@injectable
class CreateAndEditBloc extends Bloc<CreateAndEditEvent, CreateAndEditState> {
  CreateAndEditBloc() : super(CreateAndEditState()) {
    on<_Initialize>((event, emit) {
      emit(
        CreateAndEditState(
            title: event.title,
            summary: event.summary,
            notification: event.notification,
            showDate: event.showDate,
            showTime: event.showTime,
            closeDate: event.closeDate,
            closeTime: event.closeTime),
      );
    });
    on<CreateAndEditEvent>((event, emit) {
      if (event is _ChangeShowDate) {
        emit(state.copyWith(showDate: event.value));
      }
      if (event is _ChangeShowTime) {
        emit(state.copyWith(showTime: event.value));
      }

      if (event is _ChangeCloseDate) {
        emit(state.copyWith(closeDate: event.value));
      }
      if (event is _ChangeCloseTime) {
        emit(state.copyWith(closeTime: event.value));
      }
      if (event is _ChangeSummary) {
        emit(state.copyWith(summary: event.value));
      }
      if (event is _ChangeMovieTitle) {
        emit(state.copyWith(title: event.value));
      }
      if (event is _ChangeNotification) {
        emit(state.copyWith(notification: event.value));
      }
      if (event is _UploadImage) {

        emit(state.copyWith(
            image: event.file));
      }
    });
  }
}
