import 'package:flutter/material.dart';
import '../screens/add_product.dart';
import '../models/product.dart';

class AddProductButton extends StatefulWidget {
  late Function func;
  AddProductButton({Key? key, required this.func}) : super(key: key);

  @override
  State<AddProductButton> createState() => _AddProductButtonState();
}

class _AddProductButtonState extends State<AddProductButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddProduct(
                      product: Product(),
                      func: widget.func,
                    )),
          );
        },
        child: Container(
            child: Image.asset('add_button.png'), width: 100, height: 100));
  }
}
