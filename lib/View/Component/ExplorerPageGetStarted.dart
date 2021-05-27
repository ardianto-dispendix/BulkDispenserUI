import 'package:bulk_dispenser/Model/ExplorerProtocolInfo.dart';
import 'package:bulk_dispenser/View/Component/ProtocolCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorerPageGetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Text("Get Started",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14)),
            SizedBox(
              height: 3,
            ),
            Container(
                height: 2,
                decoration: new BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.grey),
                    left: BorderSide(width: 1.0, color: Colors.grey),
                    right: BorderSide(width: 200.0, color: Colors.grey),
                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            ProtocolCard(new ExplorerProtocolInfo(
                'Dispense_1', '96-well-plate', '1 day ago')),
          ],
        ),
      ],
    );
  }
}
