import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:flutter/material.dart';

class SideMenuListLine extends StatelessWidget {
  SideMenuListLine(this.injectedKey, this.selectedKey);
  final SideMenuEnum injectedKey;
  final SideMenuEnum selectedKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:
              selectedKey == injectedKey ? Colors.blue[900] : Colors.teal[400],
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      width: 2,
      height: 15,
      margin: EdgeInsets.only(right: 5),
    );
  }
}
