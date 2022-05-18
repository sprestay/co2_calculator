import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class FreightButtons extends StatefulWidget {
  late Function func;
  String? selected;
  FreightButtons({Key? key, this.func = print}) : super(key: key);

  @override
  State<FreightButtons> createState() => _FreightButtonsState();
}

class _FreightButtonsState extends State<FreightButtons> {
  String? selected;

  @override
  void initState() {
    selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Flexible(
        flex: 1,
        child: GestureDetector(
            onTap: () {
              widget.func('plane');
              setState(() {
                selected = 'plane';
              });
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 80,
                decoration: BoxDecoration(
                    color: selected == "plane"
                        ? Color.fromRGBO(145, 166, 107, 1)
                        : Color.fromRGBO(112, 108, 105, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('plane.png', width: 24, height: 14),
                          SizedBox(height: 12),
                          Text("AIR FREIGHT",
                              textAlign: TextAlign.center,
                              style: AppFontStyle.poppins_500_12_caramel)
                        ])))),
      ),
      Flexible(
        flex: 1,
        child: GestureDetector(
            onTap: () {
              widget.func("sea");
              setState(() {
                selected = 'sea';
              });
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 80,
                decoration: BoxDecoration(
                    color: selected == 'sea'
                        ? Color.fromRGBO(145, 166, 107, 1)
                        : Color.fromRGBO(112, 108, 105, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('sea.png', width: 24, height: 14),
                          SizedBox(height: 12),
                          Text("SEA FREIGHT",
                              textAlign: TextAlign.center,
                              style: AppFontStyle.poppins_500_12_caramel)
                        ])))),
      ),
      Flexible(
        flex: 1,
        child: GestureDetector(
            onTap: () {
              widget.func("ride");
              setState(() {
                selected = "ride";
              });
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 80,
                decoration: BoxDecoration(
                    color: selected == 'ride'
                        ? Color.fromRGBO(145, 166, 107, 1)
                        : Color.fromRGBO(112, 108, 105, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('ride.png', width: 24, height: 14),
                          SizedBox(height: 12),
                          Text("ROAD FREIGHT",
                              textAlign: TextAlign.center,
                              style: AppFontStyle.poppins_500_12_caramel)
                        ])))),
      )
    ]);
  }
}
