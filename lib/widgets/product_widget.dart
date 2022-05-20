import 'package:flutter/material.dart';
import '../models/product.dart';
import '../styles/fonts.dart';

class ProductWidget extends StatefulWidget {
  late Product prd;
  late bool selected;
  late Function deleteFunc;
  ProductWidget(
      {Key? key,
      required this.prd,
      this.selected = false,
      this.deleteFunc = print})
      : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late Product product;

  @override
  void initState() {
    product = widget.prd;
  }

  @override
  Widget build(BuildContext context) {
    return widget.selected
        ? Container(
            child: Stack(children: [
            Positioned(
              left: MediaQuery.of(context).size.width * 0.8 - 10,
              top: 20,
              child: GestureDetector(
                  onTap: () => widget.deleteFunc(),
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Padding(
                        child: Icon(Icons.clear_rounded,
                            size: 25, color: Colors.white),
                        padding: EdgeInsets.only(left: 10)),
                    decoration: BoxDecoration(
                      color: Color(0xFF9f9892),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100)),
                    ),
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 50, left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.productName,
                            style: AppFontStyle.poppins_500_14),
                        SizedBox(height: 10),
                        Text(product.typeOfFabric ?? '',
                            style: AppFontStyle.poppins_400_12),
                        SizedBox(height: 6),
                        Text(product.typeOfGarment ?? '',
                            style: AppFontStyle.poppins_400_12)
                      ],
                    ))),
          ]))
        : Container(
            child: Stack(children: [
            Positioned(
              left: MediaQuery.of(context).size.width * 0.7 - 20,
              top: 20,
              child: Container(
                width: 40,
                height: 40,
                child: Padding(
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        size: 20, color: Colors.white),
                    padding: EdgeInsets.only(left: 15)),
                decoration: BoxDecoration(
                    color: Color(0xFF232323),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 50, left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.productName,
                            style: AppFontStyle.poppins_500_14),
                        SizedBox(height: 10),
                        Text(product.typeOfFabric ?? '',
                            style: AppFontStyle.poppins_400_12),
                        SizedBox(height: 6),
                        Text(product.typeOfGarment ?? '',
                            style: AppFontStyle.poppins_400_12)
                      ],
                    )))
          ]));
  }
}
