import 'package:admin_movie/data/extension/session_manager.dart';
import 'package:admin_movie/data/remote/data_provider/data_provider.dart';
import 'package:admin_movie/domain/model/login_response.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../model/error.dart';

@injectable
class LoginUsecase {
  LoginUsecase(this._dataProvider);
  final DataProvider _dataProvider;

  Future<Either<DataError, LoginResponse>> call(
      String username, String password) async {
    try {
      final res = await _dataProvider
          .loginHandlerApi(username, password)
          .then((value) => value);
      await SessionManager.share.saveToken(token: res.token);
      print(res);
      return right(res);
    } on Exception catch (error) {
      return left(DataError(message: error.toString()));
    }
  }
}
