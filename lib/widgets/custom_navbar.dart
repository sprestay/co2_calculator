import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class CustomNavBar extends StatefulWidget {
  late double height;
  bool showInfo = true;
  late String title;
  CustomNavBar(
      {Key? key, this.height = 180, this.showInfo = true, this.title = ''})
      : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: widget.showInfo
                ? Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Stack(children: [
                            GestureDetector(
                              onTap: () {
                                if (Navigator.of(context).canPop()) {
                                  Navigator.pop(context);
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  Icon(Icons.arrow_back_ios_new_rounded,
                                      // Icons.chevron_left,
                                      size: 30,
                                      color: Color(0xFF676767)),
                                ],
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(widget.title.toUpperCase(),
                                      style: AppFontStyle.biggest_heading)
                                ])
                          ])
                        ])))
                : Container()));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 50);
    path.quadraticBezierTo(size.width - size.width / 7, size.height,
        size.width / 2, size.height - 30);
    path.quadraticBezierTo(
        size.width / 7, size.height - 50, 0, size.height - 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
