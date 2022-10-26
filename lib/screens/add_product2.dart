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
import '../widgets/title_subheader.dart';
import '../screens/add_product3.dart';
import '../widgets/nav_bottom_sheet.dart';

class AddProduct2 extends StatefulWidget {
  late Product product;
  late Function func;
  AddProduct2({Key? key, required this.product, required this.func})
      : super(key: key);

  @override
  State<AddProduct2> createState() => _AddProduct2State();
}

class _AddProduct2State extends State<AddProduct2> {
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
                              TitleSubheader(
                                  title: "CAPACITY",
                                  subheader: "PRODUCTION & SALES"),
                              SizedBox(height: 40),
                              EllipseInputField(
                                  // onfocus: focusChanger,
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
                                  // onfocus: focusChanger,
                                  text_type: 'int',
                                  func: (int v) {
                                    product.setAmountDelivered = v;
                                  },
                                  inital: product.total_amount_delivered == null
                                      ? ''
                                      : product.total_amount_delivered
                                          .toString(),
                                  title: "TOTAL AMOUNT DELIVERED"),
                            ])))),
                isVisible
                    ? Positioned(
                        bottom: 0,
                        child: BottomSheetContainer(
                          // height: 150,
                          cl: Colors.white,
                          content: NavBottomSheet(
                            back: () {
                              Navigator.pop(context);
                            },
                            next: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProduct3(
                                        product: product, func: widget.func)),
                              );
                            },
                          ),
                        ))
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
