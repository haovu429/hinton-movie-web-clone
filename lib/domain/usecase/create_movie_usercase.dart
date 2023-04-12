import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../data/remote/data_provider/data_provider.dart';
import '../model/error.dart';
import '../model/movies_response.dart';

@injectable
class CreateMovieUsecase {
  CreateMovieUsecase(this._dataProvider);
  final DataProvider _dataProvider;

  Future<Either<DataError, Movie>> call(Movie movie, File image) async {
    try {
      final res = await _dataProvider
          .createMovie(
              active: true,
              image: image,
              closeTime: movie.timeCloseDate!,
              closeDate: movie.closeDate!,
              showDate: movie.showDate!,
              showTime: movie.timeShowDate!,
              title: movie.title!,
              summary: movie.description!)
          .then((value) => value);
      return right(res);
    } on Exception catch (error) {
      return left(DataError(message: error.toString()));
    }
  }
}
