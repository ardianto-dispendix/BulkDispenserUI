import 'package:bulk_dispenser/View/Component/ExplorerPageProtocolList.dart';
import 'package:bulk_dispenser/View/Component/ExplorerPageRecent.dart';
import 'package:flutter/material.dart';

class ExplorePageThumbnailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            ExplorerPageRecent(),
            SizedBox(
              width: 200,
            ),
            ExplorerPageRecent(),
          ],
        ),
        ExplorerPageProtocolList(),
      ],
    );
  }
}
