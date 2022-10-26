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
import '../widgets/nav_bottom_sheet.dart';
import '../screens/first_page.dart';

class AddProduct5 extends StatefulWidget {
  late Product product;
  late Function func;
  AddProduct5({Key? key, required this.product, required this.func})
      : super(key: key);

  @override
  State<AddProduct5> createState() => _AddProduct5State();
}

class _AddProduct5State extends State<AddProduct5> {
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
                                  title: "PURCHASE PRICE",
                                  subheader: "OF FABRIC"),
                              SizedBox(height: 40),
                              EllipseInputField(
                                  // onfocus: focusChanger,
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
                          content: NavBottomSheet(
                            title: "SAVE",
                            back: () {
                              Navigator.pop(context);
                            },
                            next: () async {
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
                              Navigator.pushReplacement<void, void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      FirstPage(),
                                ),
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
