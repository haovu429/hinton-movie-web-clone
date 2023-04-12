part of 'create_and_edit_bloc.dart';

@freezed
class CreateAndEditEvent with _$CreateAndEditEvent {

   const factory CreateAndEditEvent.initialize({
     File? image,
     String? title,
       String? summary,
      String? notification,
       String? showDate,
       String? showTime,
       String? closeDate,
       String? closeTime
  }) = _Initialize;
  const factory CreateAndEditEvent.uploadImage(File? file) = _UploadImage;
  const factory CreateAndEditEvent.changeShowDate(String value) =
      _ChangeShowDate;
  const factory CreateAndEditEvent.changeShowTime(String value) =
      _ChangeShowTime;
  const factory CreateAndEditEvent.changeCloseDate(String value) =
      _ChangeCloseDate;
  const factory CreateAndEditEvent.changeCloseTime(String value) =
      _ChangeCloseTime;
  const factory CreateAndEditEvent.changeMovieTitle(String value) =
      _ChangeMovieTitle;
  const factory CreateAndEditEvent.changeSummary(String value) = _ChangeSummary;
  const factory CreateAndEditEvent.changeNotification(String value) =
      _ChangeNotification;
  const factory CreateAndEditEvent.clearMovie() = _ClearMovie;
  const factory CreateAndEditEvent.saveMovie(int? id) = _SaveMovie;
}
