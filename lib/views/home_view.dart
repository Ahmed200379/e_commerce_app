import 'package:awesome_icons/awesome_icons.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/reusable_com/cart.dart';
import 'package:e_commerce_app/services/get_all_product.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String id='homeview';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: .5,
        title: const Text('New Trend',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
        actions: [
          IconButton(
          onPressed: (){},
      icon: const Icon(Icons.shopping_cart),
            color: Colors.black,
            iconSize: 28,
          )
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
          child: FutureBuilder<List<ProductModel>>(
            future: GetAllProduct().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                print('++++++++++++${snapshot.toString()}');
                return  Center(child: Text('${snapshot.toString()}'));
              } else if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 90,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CardCategery(product: products[index]);
                  },
                );
              } else {
                // If no data is available
                return const Center(child: Text('No data available'));
              }
            },
          ),
        )
    );
  }
}
