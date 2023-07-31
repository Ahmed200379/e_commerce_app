import 'dart:ffi';

class ProductModel{
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String images;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.images,
    required this.rating
});

  factory ProductModel.fromJson(jsonData)
  {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        category: jsonData['category'],
        images: jsonData['image'],
        rating: jsonData['rating'] != null ? RatingModel.fromJson(jsonData['rating']) : RatingModel(rate: 0, count: 0),
    );
  }

}
class RatingModel{
  final dynamic rate;
  final int count;

 RatingModel({
   required this.rate,
   required this.count});

 factory RatingModel.fromJson(jsonData)
 {
   return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
 }

}