import 'package:flutter/material.dart';
import '../styles/fonts.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/custom_selector.dart';
import '../widgets/bottom_sheet_container.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/calc_values.dart';
import '../models/user.dart';
import '../models/product.dart';
import '../models/city.dart';
import '../functions/functions.dart' as f;

class CalculationResults extends StatefulWidget {
  late User user;
  CalculationResults({Key? key, required this.user}) : super(key: key);

  @override
  State<CalculationResults> createState() => _CalculationResultsState();
}

class _CalculationResultsState extends State<CalculationResults> {
  int selectedOption = 1;
  List<String> periodOptions = ["PER MONTH", "PER YEAR", "PER 10 YEARS"];
  List<Product> products = [];
  late City userlocation;
  late Product selectedProduct;

  @override
  void initState() {
    products = widget.user.products;
    userlocation = widget.user.location;
    selectedProduct = widget.user.products[0];
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
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 150, bottom: 10, right: 20, left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomSelector(
                                  title: "SELECT A PRODUCT",
                                  reversed: true,
                                  dropDownValue: selectedProduct.productName,
                                  options: products
                                      .map((e) => e.productName)
                                      .toList(),
                                  callback: (String v) {
                                    Product tmp = products
                                        .where((element) =>
                                            element.productName == v)
                                        .toList()[0];
                                    setState(() {
                                      selectedProduct = tmp;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(children: [
                                  Text("PRODUCT EFFICIENCY RATE:",
                                      style:
                                          AppFontStyle.poppins_500_16_subheader)
                                ]),
                                SizedBox(height: 25),
                                Text(
                                    "${f.caclEffientRate(selectedProduct).toStringAsFixed(2)}%",
                                    style: AppFontStyle.rateNumber),
                              ],
                            )),
                        Stack(children: [
                          Column(children: [
                            BottomSheetContainer(height: 100),
                            CustomNavBar(showInfo: false, height: 100)
                          ]),
                          Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 15, left: 15),
                                      child: Text(
                                          "SELECTED PERIOD: " +
                                              periodOptions[selectedOption],
                                          style: AppFontStyle
                                              .poppins_500_16_subheader),
                                    ),
                                    SizedBox(height: 25),
                                    Slider(
                                      divisions: 2,
                                      min: 0,
                                      max: 2,
                                      activeColor: Color(0xFF91A66B),
                                      inactiveColor:
                                          Color.fromRGBO(211, 219, 196, 0.4),
                                      value: selectedOption.toDouble(),
                                      onChanged: (double val) {
                                        setState(() {
                                          selectedOption = val.toInt();
                                        });
                                      },
                                    )
                                  ])),
                        ]),
                        Padding(
                            padding:
                                EdgeInsets.only(right: 20, top: 20, left: 20),
                            child: Column(
                              children: [
                                CalcValues(
                                    left: "TOTAL FREIGHT CO2 EMISSION:",
                                    right:
                                        "TON. ${f.periodDuplicator(f.totalCO2FreightEmission(selectedProduct, userlocation), selectedOption).toStringAsFixed(1)}"),
                                SizedBox(height: 24),
                                CalcValues(
                                    left: "WASTE C02 EMISSION RATE:",
                                    right:
                                        "TON. ${f.periodDuplicator(f.totalWasteCO2EmissionRate(selectedProduct, userlocation), selectedOption).toStringAsFixed(1)}"),
                                SizedBox(height: 24),
                                CalcValues(
                                    left: "WASTE RECYCLING:",
                                    right:
                                        "SQ.M. ${f.periodDuplicator(f.wastedMaterialToProduceAllC83(selectedProduct), selectedOption).toStringAsFixed(2)}"),
                                SizedBox(height: 24),
                                CalcValues(
                                    left: "TOTAL COST OF RAW MATERIALS:",
                                    right:
                                        "\$ ${f.periodDuplicator(f.totalCostOfRawMaterialsC86(selectedProduct), selectedOption).toStringAsFixed(0)}"),
                                SizedBox(height: 24),
                                CalcValues(
                                    left: "TOTAL COST OF WASTE:",
                                    right:
                                        "\$ ${f.periodDuplicator(f.totalCostOfWasteC89(selectedProduct), selectedOption).toStringAsFixed(0)}"),
                              ],
                            ))
                      ],
                    ))),
                Positioned(child: CustomNavBar(title: 'CALCULATE'))
              ],
            )));
  }
}
