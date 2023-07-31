import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/views/update_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCategery extends StatelessWidget {
   CardCategery({Key? key,required this.product}) : super(key: key);
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context, UpdatePage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  color:  Colors.grey.withOpacity(.2),
                  offset: const Offset(10,10),
                  spreadRadius: 0
                )
              ],
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0,10),style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(r'$''${product.price.toString()}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
          Positioned(
            right: 28,
            bottom: 100,
            child: Image.network(product.images,
              width: 90,
              height: 90,),
          ),
        ],
      ),
    );
  }
}
