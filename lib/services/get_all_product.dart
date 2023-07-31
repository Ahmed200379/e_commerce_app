import 'package:e_commerce_app/reusable_api/reusable_api.dart';
import 'package:e_commerce_app/models/product_model.dart'; //http to access from file

class GetAllProduct {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = (await Api().get(url: 'https://fakestoreapi.com/products'));
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;

  }
}