import 'package:flutter/material.dart';

class TitleSubheader extends StatelessWidget {
  late String title;
  late String subheader;
  TitleSubheader({Key? key, this.title = "", this.subheader = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w700)),
        SizedBox(height: 10),
        Text(subheader,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
