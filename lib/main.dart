 
import 'package:flutter/material.dart';
import 'package:flutterofflinedemo/file_page.dart';
import 'package:flutterofflinedemo/files/file1.dart';
import 'package:flutterofflinedemo/files/file2.dart';
import 'package:flutterofflinedemo/files/file3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offline Demo',
      theme: ThemeData.dark(),
      home: Builder(
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Demo 1"),
                onPressed: () {
                  navigate(context, FIle1());
                },
              ),
              RaisedButton(
                child: Text("Demo 2"),
                onPressed: () {
                  navigate(context, File2());
                },
              ),
              RaisedButton(
                child: Text("Demo 3"),
                onPressed: () {
                  navigate(context, File3());
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void navigate(BuildContext context, Widget widget) {
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => FilePage(child: widget),
      ),
    );
  }
}