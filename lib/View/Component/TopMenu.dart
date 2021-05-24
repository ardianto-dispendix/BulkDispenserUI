import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 40,
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
        backgroundColor: Colors.white,
        actions: <Widget>[Text('DX Bulk Dispenser')]);
  }
}
