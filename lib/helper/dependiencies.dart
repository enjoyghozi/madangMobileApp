import 'package:get/get.dart';
import 'package:madang/controller/popular_product_controller.dart';
import 'package:madang/data/api/api_client.dart';
import 'package:madang/data/repository/popular_product_repo.dart';
import 'package:madang/utilitys/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
