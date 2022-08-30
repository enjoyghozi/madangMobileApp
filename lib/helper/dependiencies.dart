import 'package:get/get.dart';
import 'package:madang/controller/popular_product_controller.dart';
import 'package:madang/data/api/api_client.dart';
import 'package:madang/data/api/repository/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://instagram.com"));

  //repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
