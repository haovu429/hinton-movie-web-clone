import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../bloc/add_update_bloc.dart';

part 'ticket_bloc.freezed.dart';
part 'ticket_state.dart';
part 'ticket_event.dart';

@injectable
class TicketBloc extends Bloc<TicketEvent, TicketState> {
  TicketBloc() : super(const TicketState.initial());
}
