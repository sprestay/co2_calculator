import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class EllipseInputField extends StatefulWidget {
  late String title;
  late TextInputType keyboard;
  late Function func;
  late String text_type;
  late String inital;
  late Function onfocus;
  EllipseInputField(
      {Key? key,
      this.title = '',
      this.keyboard = TextInputType.number,
      this.text_type = 'int',
      this.inital = '',
      this.onfocus = print,
      this.func = print})
      : super(key: key);

  @override
  State<EllipseInputField> createState() => _EllipseInputFieldState();
}

class _EllipseInputFieldState extends State<EllipseInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        child: Focus(
            onFocusChange: (bool hasFocus) {
              widget.onfocus(hasFocus);
            },
            child: TextFormField(
                initialValue: widget.inital,
                keyboardType: widget.keyboard,
                onChanged: (String v) {
                  try {
                    if (widget.text_type == 'int') {
                      widget.func(int.parse(v));
                    } else if (widget.text_type == 'double') {
                      widget.func(double.parse(v));
                    } else {
                      widget.func(v);
                    }
                  } catch (Exception) {}
                },
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: widget.title,
                    hintStyle: AppFontStyle.poppins_400_14_hint))),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100000),
            color: Color.fromRGBO(159, 152, 146, 1)));
  }
}
