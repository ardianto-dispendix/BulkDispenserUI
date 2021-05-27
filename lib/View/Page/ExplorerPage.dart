import 'package:bulk_dispenser/View/Component/ExplorePageThumbnailView.dart';
import 'package:bulk_dispenser/View/Component/ExplorerButton.dart';
import 'package:bulk_dispenser/View/Component/ExplorerPageRecent.dart';
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
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text("Ardianto nugroho's protocol",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  Text('Find your protocol here',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.normal,
                          fontSize: 10))
                ],
              ),
              SizedBox(
                width: 280,
              ),
              ExplorerButton(
                  'edit',
                  Icon(MdiIcons.formatListBulleted,
                      color: Colors.white, size: 13),
                  () {}),
              ExplorerButton(
                  'clone',
                  Icon(MdiIcons.contentCopy, color: Colors.white, size: 13),
                  () {}),
              ExplorerButton('remove',
                  Icon(MdiIcons.delete, color: Colors.white, size: 13), () {}),
              ExplorerButton(
                  'rename',
                  Icon(MdiIcons.renameBox, color: Colors.white, size: 13),
                  () {}),
              ExplorerButton('run',
                  Icon(MdiIcons.play, color: Colors.white, size: 13), () {}),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              ExplorePageThumbnailView(),
            ],
          ),
        ],
      ),
    );
  }
}
