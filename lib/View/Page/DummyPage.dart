import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  String content = '';

  Color contentColor = Colors.green;
  DummyPage(this.content, this.contentColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 44,
      decoration: BoxDecoration(color: contentColor),
      child: Center(
        child: Text(content),
      ),
    );
  }
}
