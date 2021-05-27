import 'package:bulk_dispenser/Model/ExplorerProtocolInfo.dart';
import 'package:bulk_dispenser/View/Component/ProtocolCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorerPageProtocolList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("Protocol List",
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
            Container(
              height: 85,
              width: 700,
              child: ListView(
                children: [
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_1', '96-well-plate', '1 day ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                  ProtocolCard(new ExplorerProtocolInfo(
                      'Dispense_2', '96-well-plate', '2 days ago')),
                ],
                padding: const EdgeInsets.all(3),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            )
          ],
        ),
      ],
    );
  }
}
