import 'package:bulk_dispenser/Bloc/States/NavigationMenuState.dart';
import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:bulk_dispenser/View/Page/DesignerPage.dart';
import 'package:bulk_dispenser/View/Page/ExplorerPage.dart';
import 'package:bulk_dispenser/View/Page/LiquidPage.dart';
import 'package:bulk_dispenser/View/Page/RuntimePage.dart';
import 'package:flutter/material.dart';
import 'package:bulk_dispenser/Constants.dart';

class MainArea extends StatelessWidget {
  MainArea(this.state);
  NavigationMenuState state;

  Widget _changeMainAreaPage() {
    Widget page = null;
    switch (state.selectedItem) {
      case SideMenuEnum.Explorer:
        page = ExplorerPage();
        break;
      case SideMenuEnum.Liquid:
        page = LiquidPage();
        break;
      case SideMenuEnum.Designer:
        page = DesignerPage();
        break;
      case SideMenuEnum.Runtime:
        page = RuntimePage();
        break;
    }
    return page;
  }

  @override
  Widget build(BuildContext context) {
    return _changeMainAreaPage();
  }
}
