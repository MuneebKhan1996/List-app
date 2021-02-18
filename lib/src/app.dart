import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.clear),
          onPressed: (){
            print('OSS');
          },
        ),
        appBar: AppBar(
          title: Text('Lets show some images'),
        ),
      ),

    );
  }
}