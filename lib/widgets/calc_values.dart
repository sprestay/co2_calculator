import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class CalcValues extends StatelessWidget {
  late String left;
  late String right;
  CalcValues({Key? key, this.left = '', this.right = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Text(left, style: AppFontStyle.calcValues)),
      Text(right, style: AppFontStyle.calcValues)
    ]);
  }
}
