part of 'create_and_edit_bloc.dart';

@freezed
class CreateAndEditState with _$CreateAndEditState {
  const CreateAndEditState._();
  factory CreateAndEditState(
      { 
        File? image,
        String? title,
       String? summary,
      String? notification,
       String? showDate,
       String? showTime,
       String? closeDate,
       String? closeTime}) = _CreateAndEditState;


}
