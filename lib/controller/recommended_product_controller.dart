import 'package:get/get.dart';
import 'package:madang/data/repository/popular_product_repo.dart';
import 'package:madang/data/repository/recommended_product_repo.dart';
import 'package:madang/models/products_model.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});
  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isloaded => _isLoaded;

  get isLoaded => null;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got products recommended");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      // print(_recommendedProductList);
      _isLoaded = true;
      update();
    } else {
      print("could not get products recommended");
    }
  }
}