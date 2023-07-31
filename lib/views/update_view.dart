import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/reusable_com/cusom_textfield.dart';
import 'package:e_commerce_app/reusable_com/custom_buttom.dart';
import 'package:e_commerce_app/services/update_product.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class UpdatePage extends StatefulWidget {
  UpdatePage({Key? key}) : super(key: key);
  static String id = 'update page';

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String? name, description, image;

  dynamic price;
  bool isloading =false;
  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!
        .settings
        .arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'update product',
              style: TextStyle(),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text_Form(
                    label: 'product name',
                    show_char: false,
                    onchanged: (data) {
                      name = data;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text_Form(
                    label: 'description',
                    show_char: false,
                    onchanged: (data) {
                      description = data;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text_Form(
                    label: 'price',
                    show_char: false,
                    onchanged: (data) {
                      price = double.tryParse(data);
                    },
                    input: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text_Form(
                    label: 'image',
                    show_char: false,
                    onchanged: (data) {
                      image = data;
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Button(
                    text_button: 'update',
                    ontap: () {
                      try
                      {
                        isloading=true;
                        setState(() {

                        });
                      UpdateProduct().updateproduct(
                       id: product.id,
                      title: name==null ? name=product.title : name!,
                      price: price==null ? price=product.price : price!,
                      description: description==null ? description=product.description :description!,
                      image: image==null ? image=product.images :image!,
                      category: product.category);
                      isloading=false;
                      setState(() {

                      });
                        AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            animType: AnimType.bottomSlide,
                            title: 'Success',
                            btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                      ).show();
                      } catch(e)
                      {
                        isloading=false;
                        setState(() {
                        });
                        print('${e.toString()}+++++++++');
                      };
                    }
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
