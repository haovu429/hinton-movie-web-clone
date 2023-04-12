import 'package:injectable/injectable.dart';
import '../presentation/routes/routes.dart';

@module
abstract class RegisterCoreDependencies {
  final AppRouter appRouter = AppRouter();
}
