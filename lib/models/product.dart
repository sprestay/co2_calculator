import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/city.dart';
import 'dart:math';

class Product with ChangeNotifier {
  late String productName;
  String? typeOfFabric;
  String? typeOfGarment;
  int? GSM;
  String freight_type = '';
  City? location;
  int? total_amount_producted;
  int? total_amount_delivered;
  double? length;
  double? width;
  double? garment_pattern_area;
  double? average_purchase;

  Product() {
    int min = 0;
    int max = 100;
    Random rnd = new Random();
    productName = 'PRODUCT: ' + (min + rnd.nextInt(max - min)).toString();
  }

  Product.fromJson(Map<String, dynamic> json) {
    productName = json.containsKey('productName') ? json['productName'] : '-/-';
    typeOfFabric =
        json.containsKey('typeOfFabric') ? json['typeOfFabric'] : '-/-';
    typeOfGarment =
        json.containsKey('typeOfGarment') ? json['typeOfGarment'] : '-/-';
    GSM = json.containsKey('GSM') ? json['GSM'] : null;
    freight_type =
        json.containsKey('freight_type') ? json['freight_type'] : null;
    location =
        json.containsKey('location') ? City.fromJSON(json['location']) : null;
    total_amount_producted = json.containsKey('total_amount_producted')
        ? json['total_amount_producted']
        : null;
    total_amount_delivered = json.containsKey('total_amount_delivered')
        ? json['total_amount_delivered']
        : null;
    length = json.containsKey('length') ? json['length'] : null;
    width = json.containsKey('width') ? json['width'] : null;
    garment_pattern_area = json.containsKey('garment_pattern_area')
        ? json['garment_pattern_area']
        : null;
    average_purchase =
        json.containsKey('average_purchase') ? json['average_purchase'] : null;
  }

  Map<String, dynamic> toJson() {
    return {
      "productName": productName,
      "typeOfFabric": typeOfFabric,
      "typeOfGarment": typeOfGarment,
      "GSM": GSM,
      "freight_type": freight_type,
      "location": location?.toJson(),
      "total_amount_producted": total_amount_producted,
      "total_amount_delivered": total_amount_delivered,
      "length": length,
      "width": width,
      "garment_pattern_area": garment_pattern_area,
      "average_purchase": average_purchase
    };
  }

  set setProductName(String val) {
    productName = val;
    notifyListeners();
  }

  set setTypeOfFabric(String val) {
    typeOfFabric = val;
    notifyListeners();
  }

  set setTypeOfGarment(String val) {
    typeOfGarment = val;
    notifyListeners();
  }

  set setGSM(int val) {
    GSM = val;
    notifyListeners();
  }

  set setFreightType(String val) {
    freight_type = val;
    notifyListeners();
  }

  set setLocation(City val) {
    location = val;
    notifyListeners();
  }

  set setTotalAmountProducted(int val) {
    total_amount_producted = val;
    notifyListeners();
  }

  set setAmountDelivered(int val) {
    total_amount_delivered = val;
    notifyListeners();
  }

  set setLength(double val) {
    length = val;
    notifyListeners();
  }

  set setWidth(double val) {
    width = val;
    notifyListeners();
  }

  set setGarmentPatternArea(double val) {
    garment_pattern_area = val;
    notifyListeners();
  }

  set setAveragePurchase(double val) {
    average_purchase = val;
    notifyListeners();
  }
}
