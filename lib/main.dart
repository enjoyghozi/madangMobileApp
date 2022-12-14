import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/controller/popular_product_controller.dart';
import 'package:madang/controller/recommended_product_controller.dart';
import 'package:madang/pages/food/popular_food_detail.dart';
import 'package:madang/pages/food/recomended_food_detail.dart';
import 'package:madang/pages/home/food_page_body.dart';
import 'package:madang/pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
