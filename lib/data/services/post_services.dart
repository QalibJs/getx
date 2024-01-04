import 'package:dio/dio.dart';
import 'package:getx_workout/constants/app_api_link.dart';
import 'package:getx_workout/data/model/post_model.dart';

class PostServices {
  static Dio dio = Dio();

  static Future fetchinDatas() async {
    
    Response response = await dio.get(ApiLink.post);

    if(response.statusCode ==200){
      List products  = response.data;
      List<PostModel> postList =
          products.map((e) => PostModel.fromJson(e)).toList();
      return postList;
    }
  }
}
