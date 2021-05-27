import 'package:bulk_dispenser/Model/ExplorerProtocolInfo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProtocolCard extends StatelessWidget {
  ProtocolCard(this.info);

  final ExplorerProtocolInfo info;
  TextStyle style = GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.normal, fontSize: 10);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          child: Container(
            padding: EdgeInsets.only(top: 10),
            width: 150,
            height: 75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.layers,
                      size: 40,
                      color: Colors.grey[700],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${info.protocolName}',
                          style: style,
                        ),
                        Text(
                          '${info.plateType}',
                          style: style,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'Last update: ${info.lastUpdate}',
                  style: GoogleFonts.roboto(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          )),
    );
  }
}
