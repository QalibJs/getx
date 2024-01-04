import 'package:get_it/get_it.dart';
import 'package:getx_workout/controller/main_controller.dart';

GetIt locator = GetIt.instance;

setUp() {
  locator.registerLazySingleton<MainController>(() => MainController());
}
