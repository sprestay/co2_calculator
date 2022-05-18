import 'dart:math';
import 'package:latlong2/latlong.dart';
import '../models/city.dart';
import '../models/product.dart';

int calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  final Distance distance = new Distance();

  final double km = distance.as(
      LengthUnit.Kilometer, new LatLng(lat1, lon1), new LatLng(lat2, lon2));
  return km.toInt();
}

double rawMaterialConsumptionC14(double length, double width) {
  return length * width * 0.0254;
}

double totalWasteMaterialConsumptionC15(
    double rawMatConsump, double garmentArea) {
  return rawMatConsump - garmentArea;
}

double totalRawMaterialConsumptionPerMonthC16(
    int producted, double raw_material) {
  return producted * raw_material;
}

double totalWasteConumptionPerMonthC17(int producted, double totalWaste) {
  return producted * totalWaste;
}

double totalRawMaterialWeightConsumptionPerMonthC18(
    double val1, int GSM, int total) {
  return val1 * GSM / 1000 * total;
}

double totalWasteConsumptionPerMonthC19(double v1, int GSM) {
  return v1 * GSM * 0.001;
}

double caclEffientRate(Product product) {
  double c14 = rawMaterialConsumptionC14(product.length!, product.width!);
  double c15 =
      totalWasteMaterialConsumptionC15(c14, product.garment_pattern_area!);

  double c16 = totalRawMaterialConsumptionPerMonthC16(
      product.total_amount_producted!, c14);
  double c17 =
      totalWasteConumptionPerMonthC17(product.total_amount_producted!, c15);
  double c18 = totalRawMaterialWeightConsumptionPerMonthC18(
      c14, product.GSM!, product.total_amount_producted!);
  double c19 = totalWasteConsumptionPerMonthC19(c17, product.GSM!);
  return (c16 - c17) / c16 * 100;
}

double weightOfFabricC33(
  double c16,
  int GSM,
) {
  return c16 * GSM * 0.001;
}

double calcFreightC02C36(String type, int distance) {
  if (type == "plane") {
    return distance * 1.898;
  } else if (type == "sea") {
    return distance * 0.01614;
  } else {
    return distance.toDouble();
  }
}

double totalCO2FreightEmission(Product product, City location) {
  City c1 = product.location!;
  City c2 = location;
  int distance =
      calculateDistance(c1.latitude, c1.longitude, c2.latitude, c2.longitude);
  double c14 = rawMaterialConsumptionC14(product.length!, product.width!);
  double c16 = totalRawMaterialConsumptionPerMonthC16(
      product.total_amount_producted!, c14);
  double c33 = weightOfFabricC33(c16, product.GSM!);
  double c36 = calcFreightC02C36(product.freight_type, distance);
  return c33 * c36 / 1000;
}

double totalWasteCO2EmissionRate(Product product, City location) {
  double c48 = 12.5;
  double c14 = rawMaterialConsumptionC14(product.length!, product.width!);
  double c15 =
      totalWasteMaterialConsumptionC15(c14, product.garment_pattern_area!);
  double c16 = totalRawMaterialConsumptionPerMonthC16(
      product.total_amount_producted!, c14);
  double c17 =
      totalWasteConumptionPerMonthC17(product.total_amount_producted!, c15);
  double c18 = totalRawMaterialWeightConsumptionPerMonthC18(
      c14, product.GSM!, product.total_amount_producted!);
  double c49 = totalWasteConsumptionPerMonthC19(c17, product.GSM!);
  double c50 = c49 * c48;
  double c51 = totalCO2FreightEmission(product, location);
  return (c50 + c51) / 100;
}

double wastedMaterialToProduceAllC83(Product product) {
  double c14 = rawMaterialConsumptionC14(product.length!, product.width!);
  double c15 =
      totalWasteMaterialConsumptionC15(c14, product.garment_pattern_area!);
  return c15 * product.total_amount_producted!;
}

double averageRawMetarialPriceC80(double c14, double price, double c13) {
  return c14 * price * c13 * 0.0254;
}

double totalCostOfRawMaterialsC86(Product product) {
  double c14 = rawMaterialConsumptionC14(product.length!, product.width!);
  double c16 = totalRawMaterialConsumptionPerMonthC16(
      product.total_amount_producted!, c14);
  return c16 * product.average_purchase!;
}

double totalCostOfWasteC89(Product product) {
  double c14 = rawMaterialConsumptionC14(product.length!, product.width!);
  double c15 =
      totalWasteMaterialConsumptionC15(c14, product.garment_pattern_area!);
  double c17 =
      totalWasteConumptionPerMonthC17(product.total_amount_producted!, c15);
  return c17 * product.average_purchase!;
}

double periodDuplicator(double val, int period) {
  if (period == 0) return val;
  if (period == 1) return val * 12;
  return val * 120;
}
