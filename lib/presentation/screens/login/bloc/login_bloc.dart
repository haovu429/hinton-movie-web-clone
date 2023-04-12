import 'package:admin_movie/data/extension/toast.dart';
import 'package:admin_movie/domain/usecase/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../di/dependency_injection.dart';
import '../../../routes/routes.gr.dart';

part 'login_bloc.freezed.dart';
part 'login_state.dart';
part 'login_event.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase _usecase;
  LoginBloc(this._usecase) : super(const LoginState.initial()) {
    on<_Login>((event, emit) async {
      emit(const LoginState.loading());

      final failorSuccess = await _usecase.call(event.username, event.password);
      failorSuccess.fold((l) {
        emit(LoginState.error(l.message));
        getIt<AppRouter>().context.showToast('${l.message}', isError: true);
      }, (r) {
        emit(const LoginState.success());
        getIt<AppRouter>().navigate(HomeRoute());
        getIt<AppRouter>().context.showToast('Successfully.');
      });
    });
  }
}
