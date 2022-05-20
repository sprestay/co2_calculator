import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product.dart';
import './city.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class User with ChangeNotifier {
  List<Product> products = [];
  City location = City.fromJSON({
    "name": "Dubai",
    "country": "United Arab Emirates",
    "lat": 25.07725,
    "lon": 55.30927
  });

  User() {
    extractProductsFromSharedPrefs();
  }

  void extractProductsFromSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final String? pref_products = prefs.getString('products');
    if (pref_products != null) {
      Map<String, dynamic> parsed_products = jsonDecode(pref_products);
      List<dynamic> p = parsed_products['products'];
      products = p.map((value) {
        return Product.fromJson(value);
      }).toList();
    }
    notifyListeners();
  }

  void deleteProduct(Product product) async {
    products.remove(product);
    final prefs = await SharedPreferences.getInstance();
    final String? pref_products = prefs.getString('products');
    if (pref_products != null) {
      Map<String, dynamic> js = {
        "products": products.map((e) => e.toJson()).toList()
      };
      String js_string = jsonEncode(js);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("products", js_string);
    }
  }
}
