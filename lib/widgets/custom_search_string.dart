import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class CustomSearchString extends StatefulWidget {
  late String title;
  late TextInputType keyboard;
  late Function func;
  List<String> options = [];
  CustomSearchString(
      {Key? key, this.title = '', this.options = const [], this.func = print})
      : super(key: key);

  @override
  State<CustomSearchString> createState() => _CustomSearchStringState();
}

class _CustomSearchStringState extends State<CustomSearchString> {
  String dropdownValue = '';
  bool isDropdownOpened = false;
  late GlobalKey actionKey;
  double? height, width, xPosition, yPosition;
  OverlayEntry? floatingDropdown;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.title);
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
                controller.text = v;
                widget.func(v);
                floatingDropdown?.remove();
                isDropdownOpened = !isDropdownOpened;
              },
              options: widget.options
                  .where((element) => element
                      .toLowerCase()
                      .startsWith(controller.text.toLowerCase()))
                  .toList()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        key: actionKey,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
            controller: controller,
            onChanged: (String v) {
              if (!isDropdownOpened) {
                findDropDownButton();
                floatingDropdown = _createFloatingDropdown();
                Overlay.of(context)?.insert(floatingDropdown!);
                isDropdownOpened = !isDropdownOpened;
              }
            },
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: widget.title,
                hintStyle: AppFontStyle.poppins_400_14_hint)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100000),
            color: Color.fromRGBO(159, 152, 146, 1)));
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
