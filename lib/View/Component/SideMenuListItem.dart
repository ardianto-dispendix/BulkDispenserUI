import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuListItem extends StatelessWidget {
  SideMenuListItem(
      {@required this.enumKey,
      @required this.svgSrc,
      @required this.press,
      @required this.selectedKey});

  final String svgSrc;
  final SideMenuEnum selectedKey;
  final SideMenuEnum enumKey;
  final Function press;

  bool _isSelected() {
    return enumKey == selectedKey;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(left: 0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                backgroundBlendMode: BlendMode.multiply),
            //borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Material(
                color: Colors.transparent,
                child: IconButton(
                    icon: SvgPicture.asset(
                      svgSrc,
                      color: _isSelected() ? Colors.blue[900] : Colors.grey,
                      height: 13,
                    ),
                    splashRadius: 13,
                    onPressed: press))),
      ],
    );
  }
}
