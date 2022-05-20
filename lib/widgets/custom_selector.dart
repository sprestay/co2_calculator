import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class CustomSelector extends StatefulWidget {
  late String title;
  late Function callback;
  late Function onfocus;
  List<String> options = [];
  bool reversed = false;
  String dropDownValue = '';
  CustomSelector(
      {Key? key,
      required this.title,
      this.reversed = false,
      this.onfocus = print,
      this.options = const [],
      this.dropDownValue = '',
      this.callback = print})
      : super(key: key);

  @override
  State<CustomSelector> createState() => _CustomSelectorState();
}

class _CustomSelectorState extends State<CustomSelector> {
  String dropdownValue = '';
  bool isDropdownOpened = false;
  late GlobalKey actionKey;
  double? height, width, xPosition, yPosition;
  OverlayEntry? floatingDropdown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.title);
    dropdownValue = widget.dropDownValue;
  }

  void findDropDownButton() {
    RenderBox renderbox =
        actionKey.currentContext!.findRenderObject() as RenderBox;
    height = renderbox.size.height;
    width = renderbox.size.width;
    Offset offset = renderbox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
          left: xPosition,
          width: width,
          top: yPosition! + height!,
          height: 4 * height! + 40,
          child: DropDown(
              callback: (String v) {
                setState(() {
                  dropdownValue = v;
                });
                widget.callback(v);
                widget.onfocus(false);
                floatingDropdown?.remove();
                isDropdownOpened = !isDropdownOpened;
              },
              options: widget.options));
    });
  }

  Widget downButton() {
    return Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
            color: Color(0xFFECF0F3),
            boxShadow: [
              BoxShadow(
                  offset: Offset(-1, -1),
                  blurRadius: 2,
                  color: Color(0xFFd1d9e6)),
              BoxShadow(
                  offset: Offset(1, 1), blurRadius: 2, color: Colors.white)
            ],
            borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                    color: Color(0xFFecf0f3),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFd1d9e6),
                        blurRadius: 30,
                        spreadRadius: 0,
                        offset: Offset(18, 18),
                      ),
                      BoxShadow(
                        color: Color(0xFFd1d9e6),
                        blurRadius: 30,
                        spreadRadius: 0,
                        offset: Offset(-18, -18),
                      )
                    ],
                    borderRadius: BorderRadius.circular(100)),
                child: Center(child: Icon(Icons.arrow_drop_down_outlined)))));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        key: actionKey,
        onTap: () {
          setState(() {
            if (isDropdownOpened) {
              floatingDropdown?.remove();
              widget.onfocus(false);
            } else {
              findDropDownButton();
              floatingDropdown = _createFloatingDropdown();
              Overlay.of(context)?.insert(floatingDropdown!);
              widget.onfocus(true);
            }

            isDropdownOpened = !isDropdownOpened;
          });
        },
        child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 0,
                      offset: Offset(3, 3),
                      color: Color(0xFFa3b1c6)),
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 0,
                      offset: Offset(-3, -3),
                      color: Colors.white)
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFd5d8e1),
                      Color(0xFFdfe3e9),
                      Color(0xFFe2e6eb),
                      Color(0xFFecf0f3),
                      Color(0xFFecf0f3)
                    ])),
            child: widget.reversed
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      downButton(),
                      SizedBox(width: 24),
                      Text(dropdownValue.isEmpty ? widget.title : dropdownValue,
                          style: AppFontStyle.poppins_500_14),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dropdownValue.isEmpty ? widget.title : dropdownValue,
                          style: AppFontStyle.poppins_500_14),
                      downButton()
                    ],
                  )));
  }
}

class DropDown extends StatelessWidget {
  final double itemHeight;
  Function callback;
  List<String> options;
  DropDown(
      {Key? key,
      this.itemHeight = 50,
      this.callback = print,
      this.options = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Align(
            alignment: Alignment(-0.85, 0),
            child: ClipPath(
                clipper: ArrowClipper(),
                child: Container(
                    height: 20,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF9f9892),
                    )))),
        Material(
            elevation: 20,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: itemHeight * 4,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 159, 152, 146),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.separated(
                          itemBuilder: (context, i) {
                            return GestureDetector(
                                onTap: () => {callback(options[i])},
                                child: Container(
                                    child: Text(options[i],
                                        style: AppFontStyle
                                            .poppins_500_14_white)));
                          },
                          separatorBuilder: (context, i) {
                            return SizedBox(height: 5);
                          },
                          itemCount: options.length),
                    ))))
      ],
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
