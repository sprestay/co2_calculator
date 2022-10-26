import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class NavBottomSheet extends StatefulWidget {
  late Function next;
  late Function back;
  late String title;
  NavBottomSheet(
      {Key? key, this.next = print, this.back = print, this.title = "NEXT"})
      : super(key: key);

  @override
  State<NavBottomSheet> createState() => _NavBottomSheetState();
}

class _NavBottomSheetState extends State<NavBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.09),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 114, 114, 114),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        width: 28,
                        height: 28,
                        child: Center(
                          child: Icon(Icons.arrow_back,
                              color: Colors.white, size: 20),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 1, color: Color(0xFFf8f8f8d9))),
                      ),
                      Text("BACK", style: AppFontStyle.button_text)
                    ]),
                onPressed: () {
                  widget.back();
                },
              )),
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF232323),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: () {
                    widget.next();
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 1, color: Color(0xFFf8f8f8d9))),
                        ),
                        Text(widget.title.toUpperCase(),
                            style: AppFontStyle.button_text)
                      ]))),
        ],
      ),
    );
  }
}
