import 'package:bulk_dispenser/Bloc/NavigationBloc/NavigationMenuBloc.dart';
import 'package:bulk_dispenser/Bloc/States/NavigationMenuState.dart';
import 'package:bulk_dispenser/View/MainArea.dart';
import 'package:flutter/material.dart';
import 'package:bulk_dispenser/View/Component/SideMenu.dart';
import 'package:bulk_dispenser/View/Component/DrawerMenu.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext blocContext) => NavigationMenuBloc(),
      child: BlocBuilder<NavigationMenuBloc, NavigationMenuState>(
        builder: (BuildContext blocBuildercontext, NavigationMenuState state) =>
            Scaffold(
                key: _drawerKey,
                appBar: AppBar(
                    titleSpacing: 0.0,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            _drawerKey.currentState.openDrawer();
                          },
                        ),
                        // Stack(
                        //   alignment: Alignment.center,
                        //   children: <Widget>[
                        //     IconButton(
                        //       icon: Icon(Icons.mail_outline),
                        //       onPressed: _onClickNotification,
                        //     ),
                        //     Positioned(
                        //       top: 12.0,
                        //       right: 10.0,
                        //       width: 10.0,
                        //       height: 10.0,
                        //       child: Container(
                        //         decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           color: AppColors.notification,
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        // ),
                        Expanded(
                          child: Center(
                              child: Text(
                            'test',
                            style: TextStyle(color: Colors.black),
                          )),
                        )
                      ],
                    ),
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    toolbarHeight: 40,
                    iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
                    backgroundColor: Colors.white,
                    actions: <Widget>[Text('DX Bulk Dispenser')]),
                drawer: DrawerMenu(),
                body: SafeArea(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SideMenu(),
                    Expanded(
                      child: MainArea(state),
                      flex: 5,
                    )
                  ],
                ))),
      ),
    );
  }
}
