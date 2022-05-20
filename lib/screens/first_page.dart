import 'package:flutter/material.dart';
import '../styles/fonts.dart';
import '../widgets/add_product_button.dart';
import '../widgets/bottom_sheet_container.dart';
import '../widgets/button_on_bottom_sheet.dart';
import '../widgets/product_widget.dart';
import '../models/product.dart';
import '../screens/calculation_results.dart';
import '../widgets/custom_selector.dart';
import '../models/user.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late User user;
  String selectedProduct = '';

  @override
  void initState() {
    user = User();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return ChangeNotifierProvider<User>.value(
        value: user,
        child: Consumer<User>(
            builder: (context, value, child) => Scaffold(
                  body: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.18,
                              left: 20,
                              right: 20,
                              bottom: 0),
                          child: ListView.separated(
                              itemBuilder: (BuildContext context, int index) {
                                if (index == 0) {
                                  return SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06);
                                }
                                return GestureDetector(
                                  onLongPress: () {
                                    setState(() {
                                      if (selectedProduct ==
                                          user.products[index - 1]
                                              .productName) {
                                        selectedProduct = '';
                                      } else {
                                        selectedProduct = user
                                            .products[index - 1].productName;
                                      }
                                    });
                                  },
                                  child: ProductWidget(
                                    deleteFunc: () {
                                      user.deleteProduct(
                                          user.products[index - 1]);
                                      setState(() {});
                                    },
                                    prd: user.products[index - 1],
                                    selected:
                                        user.products[index - 1].productName ==
                                            selectedProduct,
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      SizedBox(height: 10),
                              itemCount: user.products.length + 1),
                        ),
                        ClipPath(
                          clipper: MyClipper(),
                          child: Container(
                              // constraints: BoxConstraints(maxHeight: 300),
                              // height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 35),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: FittedBox(
                                            child: AddProductButton(
                                              media: media,
                                              func: (Product p) async {
                                                user.products.add(p);
                                                setState(() {});
                                                Map<String, dynamic> js = {
                                                  "products": user.products
                                                      .map((e) => e.toJson())
                                                      .toList()
                                                };
                                                String js_string =
                                                    jsonEncode(js);
                                                final prefs =
                                                    await SharedPreferences
                                                        .getInstance();
                                                await prefs.setString(
                                                    "products", js_string);
                                              },
                                            ),
                                          )),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.3 >
                                                      200
                                                  ? 32
                                                  : 10),
                                          child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              child: FittedBox(
                                                  child: Text(
                                                      "ADD YOUR PRODUCTS",
                                                      style: AppFontStyle
                                                          .biggest_heading))))
                                    ],
                                  ))),
                        ),
                        Positioned(
                            bottom: 0,
                            child: BottomSheetContainer(
                                height: 100, cl: Color(0xffd9d0c9)))
                      ])),
                  floatingActionButton: ButtonOnBottomSheet(
                    title: "CALCULATE",
                    callback: () {
                      if (user.products.length == 0) {
                        SnackBar snackBar = SnackBar(
                          content: Text("Add at least one product"),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CalculationResults(user: user)),
                      );
                    },
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                )));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 50);
    path.quadraticBezierTo(size.width - size.width / 7, size.height,
        size.width / 2, size.height - 30);
    path.quadraticBezierTo(
        size.width / 7, size.height - 50, 0, size.height - 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
