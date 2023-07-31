import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/reusable_api/reusable_api.dart';

class AddProduct {
  Future<ProductModel> addproduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
  Map<String,double> data= await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category
      },
    );
  return ProductModel.fromJson(data);
  }
}
