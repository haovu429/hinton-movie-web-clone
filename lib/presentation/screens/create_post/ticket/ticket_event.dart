
part of 'ticket_bloc.dart';

@freezed
class TicketEvent with _$TicketEvent {

   const factory TicketEvent.initialize({
   required String price,
   required String ticketDate,
   required String ticketTime,
    String? website,
  }) = _Initialize;
  
  const factory TicketEvent.changeDate(String value) =
      _ChangeDate;
  const factory TicketEvent.changeTime(String value) =
      _ChangeTime;
  const factory TicketEvent.changePrice(String value) =
      _ChangePrice;
  const factory TicketEvent.changeLink(String value) = _ChangeLink;
  const factory TicketEvent.clearMovie() = _ClearTicket;
  const factory TicketEvent.saveMovie(int? id) = _SaveTicket;
}
