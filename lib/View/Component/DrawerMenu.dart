import 'package:bulk_dispenser/Bloc/Event/NavigationMenuEvent.dart';
import 'package:bulk_dispenser/Bloc/NavigationBloc/NavigationMenuBloc.dart';
import 'package:bulk_dispenser/Bloc/States/NavigationMenuState.dart';
import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:bulk_dispenser/View/Component/DrawerMenuListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: BlocBuilder<NavigationMenuBloc, NavigationMenuState>(
          builder: (BuildContext context, NavigationMenuState state) => Column(
            children: [
              DrawerHeader(
                child: Image.asset("assets/icons/Protocols icon-1.svg"),
              ),
              DrawerMenuListTile(
                  enumKey: SideMenuEnum.Explorer,
                  title: 'Protocol Explorer',
                  svgSrc: 'assets/icons/Protocols icon-1.svg',
                  press: () {
                    BlocProvider.of<NavigationMenuBloc>(context)
                        .add(NavigateTo(SideMenuEnum.Explorer));
                  },
                  selected: state.selectedItem),
              DrawerMenuListTile(
                  enumKey: SideMenuEnum.Liquid,
                  title: 'Liquid Editor',
                  svgSrc: 'assets/icons/Edit droplet-1.svg',
                  press: () {
                    BlocProvider.of<NavigationMenuBloc>(context)
                        .add(NavigateTo(SideMenuEnum.Liquid));
                  },
                  selected: state.selectedItem),
              DrawerMenuListTile(
                  enumKey: SideMenuEnum.Designer,
                  title: 'Protocol Designer',
                  svgSrc: 'assets/icons/Well plate.svg',
                  press: () {
                    BlocProvider.of<NavigationMenuBloc>(context)
                        .add(NavigateTo(SideMenuEnum.Designer));
                  },
                  selected: state.selectedItem),
              DrawerMenuListTile(
                  enumKey: SideMenuEnum.Runtime,
                  title: 'Runtime View',
                  svgSrc: 'assets/icons/Play icon.svg',
                  press: () {
                    BlocProvider.of<NavigationMenuBloc>(context)
                        .add(NavigateTo(SideMenuEnum.Runtime));
                  },
                  selected: state.selectedItem)
            ],
          ),
        ),
      ),
    );
  }
}
