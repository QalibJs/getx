import 'package:get/state_manager.dart';
import 'package:getx_workout/data/services/post_services.dart';

import '../data/model/post_model.dart';

class MainController extends GetxController {
  RxInt count = 0.obs;
  RxBool isLoading = true.obs;
  void incrementCounter() => count.value++;

  //API fetching

  var postList = List<PostModel>.empty().obs;

  void fetchDatas() async {
    final datas = await PostServices.fetchinDatas();
    try {
      isLoading(true);
      if (datas != null) {
        postList.value = datas;
      }
    } finally {
      isLoading(false);
    }

    // postList = datas;
  }
}
