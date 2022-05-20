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
    // var keyboardVisibilityController = KeyboardVisibilityController();
    // keyboardSubscription =
    //     keyboardVisibilityController.onChange.listen((bool visible) {
    //   setState(() {
    //     isVisible = visible;
    //   });
    // });
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
                        top: 50, left: 20, right: 20, bottom: 50),
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.only(top: 90, bottom: 150),
                            child: Column(children: [
                              CustomSelector(
                                options: appeal,
                                onfocus: focusChanger,
                                callback: (String v) {
                                  product.setTypeOfGarment = v;
                                },
                                title: "TYPE OF GARMENT",
                              ),
                              SizedBox(height: 12),
                              CustomSelector(
                                  options: fabric.keys.toList(),
                                  title: "TYPE OF FABRIC",
                                  onfocus: focusChanger,
                                  callback: (String v) {
                                    product.setTypeOfFabric = v;
                                    product.setGSM = fabric[v]!['GSM'];
                                  }),
                              SizedBox(height: 20),
                              CustomSearchString(
                                  onfocus: focusChanger,
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
                              SizedBox(height: 16),
                              EllipseInputField(
                                  onfocus: focusChanger,
                                  text_type: 'int',
                                  func: (int v) {
                                    product.setTotalAmountProducted = v;
                                  },
                                  inital: product.total_amount_producted == null
                                      ? ''
                                      : product.total_amount_producted
                                          .toString(),
                                  title: "TOTAL AMOUNT PRODUCTED"),
                              SizedBox(height: 16),
                              EllipseInputField(
                                  onfocus: focusChanger,
                                  text_type: 'int',
                                  func: (int v) {
                                    product.setAmountDelivered = v;
                                  },
                                  inital: product.total_amount_delivered == null
                                      ? ''
                                      : product.total_amount_delivered
                                          .toString(),
                                  title: "TOTAL AMOUNT DELIVERED"),
                              SizedBox(height: 16),
                              EllipseInputField(
                                onfocus: focusChanger,
                                title: "LENGTH",
                                text_type: 'double',
                                func: (double v) {
                                  product.setLength = v;
                                },
                                inital: product.length == null
                                    ? ''
                                    : product.length.toString(),
                              ),
                              SizedBox(height: 16),
                              EllipseInputField(
                                  onfocus: focusChanger,
                                  title: "WIDTH",
                                  text_type: 'double',
                                  func: (double v) {
                                    product.setWidth = v;
                                  },
                                  inital: product.width == null
                                      ? ''
                                      : product.width.toString()),
                              SizedBox(height: 16),
                              EllipseInputField(
                                  onfocus: focusChanger,
                                  text_type: 'double',
                                  func: (double v) {
                                    product.setGarmentPatternArea = v;
                                  },
                                  inital: product.garment_pattern_area == null
                                      ? ''
                                      : product.garment_pattern_area.toString(),
                                  title: "GARMENT PATTERN AREA OF 1 ITEM"),
                              SizedBox(height: 16),
                              EllipseInputField(
                                  onfocus: focusChanger,
                                  text_type: 'double',
                                  func: (double v) {
                                    product.setAveragePurchase = v;
                                  },
                                  inital: product.average_purchase == null
                                      ? ''
                                      : product.average_purchase.toString(),
                                  title: "AVERAGE PURCHASE AT SUPPLIER")
                            ])))),
                isVisible
                    ? Positioned(
                        bottom: 0,
                        child: BottomSheetContainer(
                          // height: 150,
                          cl: Colors.white,
                          content: ButtonOnBottomSheet(callback: () async {
                            Map<String, dynamic> js = product.toJson();
                            List<String> keys = js.keys.toList();
                            for (int i = 0; i < keys.length; i++) {
                              if (js[keys[i]] == null ||
                                  (js[keys[i]].runtimeType == 'String' &&
                                      js[keys[i]].isEmpty)) {
                                SnackBar snackBar = SnackBar(
                                  content: Text(
                                      keys[i].toString() + " is incorrect"),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                return;
                              }
                            }
                            widget.func(product);
                            Navigator.pop(context);
                          }),
                        ))
                    : Container(),
                Positioned(child: CustomNavBar(title: "FILL OUT THE FORM")),
              ],
            )));
  }
}
