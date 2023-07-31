import 'package:e_commerce_app/reusable_api/reusable_api.dart';
import 'package:e_commerce_app/models/product_model.dart'; //http to access from file
class GetCategory{
  Future<List<ProductModel>> getAllProducts({required String categoryname}) async {
      List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryname');
      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return productsList;
  }
}