import 'package:e_commerce_app/reusable_api/reusable_api.dart';
import '../models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateproduct(
      {
      required var id,
      required String? title,
      required dynamic price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price.toString(),
        'description': description,
        'image': image,
        'category': category
      },
    );
    return ProductModel.fromJson(data);
  }
}
