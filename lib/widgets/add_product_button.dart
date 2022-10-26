import 'package:flutter/material.dart';
import '../screens/add_product1.dart';
import '../models/product.dart';

class AddProductButton extends StatefulWidget {
  late Function func;
  late Size media;
  AddProductButton({Key? key, required this.func, required this.media})
      : super(key: key);

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
          child: Image.asset('add_button.png'),
          constraints: BoxConstraints(
            maxHeight: 100,
            maxWidth: 100,
            minWidth: 30,
            minHeight: 30,
          ),
          width: widget.media.width * 0.2,
        ));
  }
}
