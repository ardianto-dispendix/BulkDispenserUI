import 'package:bulk_dispenser/Model/ExplorerProtocolInfo.dart';
import 'package:bulk_dispenser/View/Component/ProtocolCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorerPageRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Text("Recent Protocol",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 30)),
            Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.grey[800],
            ),
            Row(
              children: [
                ProtocolCard(new ExplorerProtocolInfo(
                    'Dispense_1', '96-well-plate', '1 day ago')),
                ProtocolCard(new ExplorerProtocolInfo(
                    'Dispense_2', '96-well-plate', '2 days ago')),
              ],
            )
          ],
        ),
      ],
    );
  }
}
