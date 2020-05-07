import 'package:flutter/material.dart';

class FilePage extends StatelessWidget {
  const FilePage({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offline Demo"),
      ),
      body: child,
    );
  }
}
