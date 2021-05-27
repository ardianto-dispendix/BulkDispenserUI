import 'package:bulk_dispenser/Constants.dart';
import 'package:flutter/material.dart';

class ExplorerButton extends StatelessWidget {
  ExplorerButton(this.toolTip, this.icon, this.pressed);
  final Icon icon;
  final String toolTip;
  final Function pressed;
  int color = 0xFF5BAC43;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 10,
        ),
        Material(
          child: Ink(
            width: 65,
            height: 51,
            decoration: const ShapeDecoration(
              color: mainBlueColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6))),
            ),
            child: IconButton(tooltip: toolTip, icon: icon, onPressed: pressed),
          ),
        ),
      ],
    );
  }
}

enum ButtonColorType { blue, green }
