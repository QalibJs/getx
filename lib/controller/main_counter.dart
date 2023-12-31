import 'package:get/state_manager.dart';

class MainCounter extends GetxController {
  var count = 0.obs;
  void incrementCounter() => count.value++;
  
}
