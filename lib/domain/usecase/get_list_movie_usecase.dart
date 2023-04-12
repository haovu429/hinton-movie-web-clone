import 'package:admin_movie/data/extension/session_manager.dart';
import 'package:admin_movie/data/remote/data_provider/data_provider.dart';
import 'package:admin_movie/domain/model/login_response.dart';
import 'package:admin_movie/domain/model/movies_response.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../model/error.dart';

@injectable
class GetListMovieUsecase {
  GetListMovieUsecase(this._dataProvider);
  final DataProvider _dataProvider;

  Future<Either<DataError, List<Movie>>> call() async {
    try {
      final res = await _dataProvider
          .getListMovie()
          .then((value) => value);
      return right(res);
    } on Exception catch (error) {
      return left(DataError(message: error.toString()));
    }
  }
}
