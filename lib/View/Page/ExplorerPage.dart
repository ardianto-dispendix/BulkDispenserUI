import 'package:bulk_dispenser/View/Component/ExplorerButton.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double width = 400;
    return Container(
      margin: EdgeInsets.all(2),
      width: MediaQuery.of(context).size.width - 50,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                    height: 15,
                  ),
                  Text("Ardianto nugroho's protocol",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  Text('Find your protocol here',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.normal,
                          fontSize: 14))
                ],
              ),
              SizedBox(
                width: 650,
                height: 10,
              ),
              ExplorerButton(
                  'edit',
                  Icon(
                    MdiIcons.viewList,
                    color: Colors.white,
                  ),
                  () {}),
              ExplorerButton(
                  'clone',
                  Icon(MdiIcons.contentCopy, color: Colors.white, size: 24),
                  () {}),
              ExplorerButton('remove',
                  Icon(MdiIcons.delete, color: Colors.white, size: 24), () {}),
              ExplorerButton(
                  'rename',
                  Icon(MdiIcons.renameBox, color: Colors.white, size: 24),
                  () {}),
              ExplorerButton('run',
                  Icon(MdiIcons.play, color: Colors.white, size: 24), () {}),
            ],
          )
        ],
      ),
    );
  }
}
