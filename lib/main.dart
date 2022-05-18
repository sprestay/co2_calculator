import 'package:flutter/material.dart';
import './screens/first_page.dart';
import './screens/add_product.dart';
import './screens/calculation_results.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color(0xffd9d0c9)),
      home: FirstPage(),
    );
  }
}
