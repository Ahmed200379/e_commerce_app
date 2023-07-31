import 'package:e_commerce_app/reusable_api/reusable_api.dart';
class  GetCategories{
 Future<List<dynamic>> getcategories() async
 {
 List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');

 return data;

 }
}