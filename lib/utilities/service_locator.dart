import 'package:eden_life_task/common/service/ably_service.dart';
import 'package:eden_life_task/common/service/storage_service.dart';
import 'package:eden_life_task/feature/login/data/repository/login_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

GetIt locator = GetIt.instance;

void setupLocator() {
  /// SERVICES
  locator.registerLazySingleton<LoginRepository>(
    () => LoginRepository(),
  );

  locator.registerLazySingleton<StorageService>(
    () => StorageService(),
  );

  locator.registerLazySingleton<AblyService>(
    () => AblyService(),
  );
}
