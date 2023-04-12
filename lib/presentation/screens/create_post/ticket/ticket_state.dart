part of 'ticket_bloc.dart';

@freezed
class TicketState with _$TicketState {
  const TicketState._();
  factory TicketState({
   required String price,
   required String ticketDate,
   required String ticketTime,
    String? website,
  }) = _TicketState;
  const factory TicketState.initial() = _Initial;
  const factory TicketState.saved() = _Saved;
  const factory TicketState.saving() = _Saving;
  const factory TicketState.failed({String? message}) = _Failed;
}
