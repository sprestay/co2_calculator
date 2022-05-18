import 'package:flutter/material.dart';
import './button_on_bottom_sheet.dart';

class BottomSheetContainer extends StatefulWidget {
  late Color cl;
  late double height;
  late Widget content;
  BottomSheetContainer({
    Key? key,
    this.cl = Colors.white,
    this.height = 180,
    this.content = const Text(""),
  }) : super(key: key);

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
            height: widget.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: widget.cl,
            ),
            child: widget.content));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 60);
    path.quadraticBezierTo(size.width / 7, 0, size.width / 2, 30);
    path.quadraticBezierTo(size.width - size.width / 7, 50, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
