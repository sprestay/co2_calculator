import 'package:flutter/material.dart';
import './screens/first_page.dart';
import 'screens/add_product1.dart';
import './screens/calculation_results.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, child) => ResponsiveWrapper.builder(
      //   // ClampingScrollWrapper.builder(context, child!),
      //   // breakpoints: const [
      //   //   ResponsiveBreakpoint.resize(1700, name: MOBILE),
      //   //   // ResponsiveBreakpoint.autoScale(600, name: TABLET),
      //   //   // ResponsiveBreakpoint.resize(800, name: DESKTOP),
      //   //   // ResponsiveBreakpoint.autoScale(1700, name: "XL")
      //   // ]
      //   child,
      //   maxWidth: 400,
      //   minWidth: 370,

      //   defaultScale: true,
      // ),
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color(0xffd9d0c9)),
      home: FirstPage(),
    );
  }
}
