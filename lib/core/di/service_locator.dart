import 'package:flutter_starwars/app/data/repository/auth_repository_impl.dart';
import 'package:flutter_starwars/app/data/repository/warrior_repository_impl.dart';
import 'package:flutter_starwars/app/data/source/remote/auth_service.dart';
import 'package:flutter_starwars/app/data/source/remote/warrior_service.dart';
import 'package:flutter_starwars/app/domain/repository/auth_repository.dart';
import 'package:flutter_starwars/app/domain/repository/warrior_repository.dart';
import 'package:flutter_starwars/app/domain/usecase/auth_usecase.dart';
import 'package:flutter_starwars/app/domain/usecase/warrior_usecase.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/login/login_viewmodel.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  // Services
  serviceLocator.registerLazySingleton<IAuthService>(() => new AuthService());
  serviceLocator
      .registerLazySingleton<IWarriorService>(() => new WarriorService());

  // Repos
  serviceLocator
      .registerLazySingleton<AuthRepository>(() => new AuthRepositoryImpl());
  serviceLocator.registerLazySingleton<WarriorRepository>(
      () => new WarriorRepositoryImpl());

  // UseCases
  serviceLocator.registerFactory<AuthUseCase>(() => new AuthUseCase());
  serviceLocator.registerFactory<WarriorUseCase>(() => new WarriorUseCase());

  // ViewModels
  serviceLocator
      .registerLazySingleton<LoginViewModel>(() => new LoginViewModel());
  serviceLocator.registerLazySingleton<ChooseSideViewModel>(
      () => new ChooseSideViewModel());
}
