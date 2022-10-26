import 'package:flutter/material.dart';
import '../styles/fonts.dart';
import '../widgets/button_on_bottom_sheet.dart';
import '../widgets/bottom_sheet_container.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/custom_selector.dart';
import '../widgets/freight_buttons.dart';
import '../widgets/ellipse_inputfield.dart';
import '../widgets/bottom_sheet_container.dart';
import '../widgets/button_on_bottom_sheet.dart';
import '../widgets/custom_search_string.dart';
import '../models/product.dart';
import '../data/fabric.dart';
import '../data/appeal.dart';
import '../data/cities.dart';
import '../models/city.dart';
// import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'dart:async';
import '../widgets/nav_bottom_sheet.dart';
import '../screens/add_product2.dart';

class AddProduct extends StatefulWidget {
  late Product product;
  late Function func;
  AddProduct({Key? key, required this.product, required this.func})
      : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  late Product product;
  late StreamSubscription<bool> keyboardSubscription;
  bool isVisible = true;

  @override
  void initState() {
    product = widget.product;
  }

  void focusChanger(bool foc) {
    setState(() {
      isVisible = !foc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 50),
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.only(top: 90, bottom: 150),
                            child: Column(children: [
                              CustomSelector(
                                options: appeal,
                                // onfocus: focusChanger,
                                callback: (String v) {
                                  product.setTypeOfGarment = v;
                                },
                                title: "TYPE OF GARMENT",
                              ),
                              SizedBox(height: 12),
                              CustomSelector(
                                  options: fabric.keys.toList(),
                                  title: "TYPE OF FABRIC",
                                  // onfocus: focusChanger,
                                  callback: (String v) {
                                    product.setTypeOfFabric = v;
                                    product.setGSM = fabric[v]!['GSM'];
                                  }),
                              SizedBox(height: 50),
                              CustomSearchString(
                                  // onfocus: focusChanger,
                                  title: "LOCATION OF SUPPLIER",
                                  options: cities.keys.toList(),
                                  func: (String v) {
                                    City c = City.fromJSON(cities[v]!);
                                    product.setLocation = c;
                                  }),
                              SizedBox(height: 16),
                              FreightButtons(func: (String v) {
                                product.setFreightType = v;
                              }),
                            ])))),
                isVisible
                    ? Positioned(
                        bottom: 0,
                        child: BottomSheetContainer(
                            cl: Colors.white,
                            content: NavBottomSheet(
                              back: () {
                                Navigator.pop(context);
                              },
                              next: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddProduct2(
                                          product: product, func: widget.func)),
                                );
                              },
                            )))
                    : Container(),
                Positioned(
                    child: CustomNavBar(
                        title: "FILL OUT THE FORM",
                        showInfo: false,
                        height: 80)),
              ],
            )));
  }
}
