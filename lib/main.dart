import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'src/models/image_ model.dart';
import 'dart:convert';
import 'src/widgets/image_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  createState() {
    return App();
  }
}

class App extends State<MyApp> {
  int counter = 0;
  List<ImageModel> images = [];
  void fetchImage() async {
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Lets show some images'),
        ),
      ),

    );
  }
}
