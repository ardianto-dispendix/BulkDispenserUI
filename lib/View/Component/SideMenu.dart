import 'package:bulk_dispenser/Bloc/Event/NavigationMenuEvent.dart';
import 'package:bulk_dispenser/Bloc/NavigationBloc/NavigationMenuBloc.dart';
import 'package:bulk_dispenser/Bloc/States/NavigationMenuState.dart';
import 'package:bulk_dispenser/Enum/SideMenuEnum.dart';
import 'package:bulk_dispenser/View/Component/SideMenuListItem.dart';
import 'package:bulk_dispenser/View/Component/SideMenuListLine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bulk_dispenser/Bloc/SideMenuBloc/MenuLineSelectorPositionCubit.dart';
import 'package:bulk_dispenser/Model/SideMenuLinePosition.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MenuLineSelectorPositionCubit>(
          create: (_) => MenuLineSelectorPositionCubit(),
        ),
      ],
      child: Container(
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(color: Colors.white),
        height: MediaQuery.of(context).size.height,
        width: 44,
        child: SingleChildScrollView(
          child: BlocConsumer<NavigationMenuBloc, NavigationMenuState>(
            listener: (context, state) {
              context
                  .read<MenuLineSelectorPositionCubit>()
                  .changeLinePosition(state.selectedItem);
            },
            builder: (context, state) => Row(
              children: [
                Column(
                  children: [
                    SideMenuListItem(
                        enumKey: SideMenuEnum.Explorer,
                        svgSrc: 'assets/icons/Protocols icon-1.svg',
                        press: () {
                          BlocProvider.of<NavigationMenuBloc>(context)
                              .add(NavigateTo(SideMenuEnum.Explorer));
                        },
                        selectedKey: state.selectedItem),
                    SideMenuListLine(SideMenuEnum.Explorer, state.selectedItem),
                    SideMenuListItem(
                        enumKey: SideMenuEnum.Liquid,
                        svgSrc: 'assets/icons/Edit droplet-1.svg',
                        press: () {
                          BlocProvider.of<NavigationMenuBloc>(context)
                              .add(NavigateTo(SideMenuEnum.Liquid));
                        },
                        selectedKey: state.selectedItem),
                    SideMenuListLine(SideMenuEnum.Liquid, state.selectedItem),
                    SideMenuListItem(
                        enumKey: SideMenuEnum.Designer,
                        svgSrc: 'assets/icons/Well plate.svg',
                        press: () {
                          BlocProvider.of<NavigationMenuBloc>(context)
                              .add(NavigateTo(SideMenuEnum.Designer));
                        },
                        selectedKey: state.selectedItem),
                    SideMenuListLine(SideMenuEnum.Designer, state.selectedItem),
                    SideMenuListItem(
                        enumKey: SideMenuEnum.Runtime,
                        svgSrc: 'assets/icons/Play icon.svg',
                        press: () {
                          BlocProvider.of<NavigationMenuBloc>(context)
                              .add(NavigateTo(SideMenuEnum.Runtime));
                        },
                        selectedKey: state.selectedItem),
                  ],
                ),
                BlocBuilder<MenuLineSelectorPositionCubit,
                    SideMenuLinePosition>(
                  builder: (context, state) => AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    width: 3,
                    height: 25,
                    margin: EdgeInsets.fromLTRB(
                        state.left, state.top, state.right, state.bottom),
                    duration: Duration(milliseconds: 500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
