import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class City with ChangeNotifier {
  late double latitude, longitude;
  late String city;
  late String country;

  City.fromJSON(Map<String, dynamic> json) {
    latitude = json['lat'];
    longitude = json['lon'];
    city = json['name'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    return {
      "lat": latitude,
      "lon": longitude,
      "name": city,
      "country": country
    };
  }
}
