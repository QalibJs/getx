import 'package:get_it/get_it.dart';
import 'package:getx_workout/controller/main_counter.dart';

GetIt locator = GetIt.instance;

setUp() {
  locator.registerLazySingleton<MainCounter>(() => MainCounter());
}
