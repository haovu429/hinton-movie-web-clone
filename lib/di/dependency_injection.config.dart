// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:admin_movie/data/remote/api/base_api.dart' as _i3;
import 'package:admin_movie/data/remote/data_provider/data_provider.dart'
    as _i6;
import 'package:admin_movie/data/remote/data_provider/data_provider_impl.dart'
    as _i7;
import 'package:admin_movie/di/module.dart' as _i16;
import 'package:admin_movie/domain/usecase/create_movie_usercase.dart' as _i13;
import 'package:admin_movie/domain/usecase/get_list_movie_usecase.dart' as _i8;
import 'package:admin_movie/domain/usecase/login_usecase.dart' as _i9;
import 'package:admin_movie/domain/usecase/update_movie_usecase.dart' as _i12;
import 'package:admin_movie/presentation/routes/routes.dart' as _i4;
import 'package:admin_movie/presentation/screens/create_post/bloc/add_update_bloc.dart'
    as _i15;
import 'package:admin_movie/presentation/screens/create_post/bloc/create_and_edit_bloc.dart'
    as _i5;
import 'package:admin_movie/presentation/screens/create_post/ticket/ticket_bloc.dart'
    as _i11;
import 'package:admin_movie/presentation/screens/login/bloc/login_bloc.dart'
    as _i14;
import 'package:admin_movie/presentation/screens/posts/bloc/posts_bloc.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerCoreDependencies = _$RegisterCoreDependencies();
    gh.factory<_i3.APIDataStore>(() => _i3.APIDataStore());
    gh.factory<_i4.AppRouter>(() => registerCoreDependencies.appRouter);
    gh.factory<_i5.CreateAndEditBloc>(() => _i5.CreateAndEditBloc());
    gh.singleton<_i6.DataProvider>(_i7.DataProviderImpl());
    gh.factory<_i8.GetListMovieUsecase>(
        () => _i8.GetListMovieUsecase(gh<_i6.DataProvider>()));
    gh.factory<_i9.LoginUsecase>(
        () => _i9.LoginUsecase(gh<_i6.DataProvider>()));
    gh.factory<_i10.PostsBloc>(
        () => _i10.PostsBloc(gh<_i8.GetListMovieUsecase>()));
    gh.factory<_i11.TicketBloc>(() => _i11.TicketBloc());
    gh.factory<_i12.UpdateMovieUsecase>(
        () => _i12.UpdateMovieUsecase(gh<_i6.DataProvider>()));
    gh.factory<_i13.CreateMovieUsecase>(
        () => _i13.CreateMovieUsecase(gh<_i6.DataProvider>()));
    gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(gh<_i9.LoginUsecase>()));
    gh.factory<_i15.AddUpdateBloc>(() => _i15.AddUpdateBloc(
          gh<_i13.CreateMovieUsecase>(),
          gh<_i12.UpdateMovieUsecase>(),
        ));
    return this;
  }
}

class _$RegisterCoreDependencies extends _i16.RegisterCoreDependencies {}
