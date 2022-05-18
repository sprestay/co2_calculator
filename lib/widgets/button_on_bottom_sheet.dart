import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class ButtonOnBottomSheet extends StatefulWidget {
  late Function callback;
  late String title;
  ButtonOnBottomSheet({Key? key, this.callback = print, this.title = "SAVE"})
      : super(key: key);

  @override
  State<ButtonOnBottomSheet> createState() => _ButtonOnBottomSheetState();
}

class _ButtonOnBottomSheetState extends State<ButtonOnBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF232323),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(width: 1, color: Color(0xFFf8f8f8d9))),
                    ),
                    Text(widget.title.toUpperCase(),
                        style: AppFontStyle.button_text)
                  ])),
        ],
      ),
      onPressed: () => {widget.callback()},
    );
  }
}
