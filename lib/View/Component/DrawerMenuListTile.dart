import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerMenuListTile extends StatelessWidget {
  DrawerMenuListTile({
    @required this.enumKey,
    @required this.title,
    @required this.svgSrc,
    @required this.press,
    @required this.selected,
  });

  final SideMenuEnum enumKey;
  final String title, svgSrc;
  final Function press;
  final SideMenuEnum selected;

  bool isSelected() {
    return selected == enumKey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          color: isSelected() ? Colors.blue[900] : Colors.transparent),
      child: ListTile(
        minVerticalPadding: 10,
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc,
          color: isSelected() ? Colors.white : Colors.black,
          height: 16,
        ),
        title: Text(
          title,
          style: TextStyle(color: isSelected() ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
