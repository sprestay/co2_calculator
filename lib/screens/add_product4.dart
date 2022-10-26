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
import '../screens/add_product5.dart';
import '../widgets/nav_bottom_sheet.dart';

class AddProduct4 extends StatefulWidget {
  late Product product;
  late Function func;
  AddProduct4({Key? key, required this.product, required this.func})
      : super(key: key);

  @override
  State<AddProduct4> createState() => _AddProduct4State();
}

class _AddProduct4State extends State<AddProduct4> {
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
                                  title: "PRODUCTION",
                                  subheader: "PATTERN AREA"),
                              SizedBox(height: 20),
                              Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("garment_image.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              SizedBox(height: 20),
                              EllipseInputField(
                                  // onfocus: focusChanger,
                                  text_type: 'double',
                                  func: (double v) {
                                    product.setGarmentPatternArea = v;
                                  },
                                  inital: product.garment_pattern_area == null
                                      ? ''
                                      : product.garment_pattern_area.toString(),
                                  title: "ENTER ITEM AREA"),
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
                                    builder: (context) => AddProduct5(
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
