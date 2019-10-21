import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Declare a set list of images to cycle through
  final List<Image> _itemImages = [
    Image.asset('assets/detroit_cityscape.jpg'),
    Image.asset('assets/detroit_meets.jpeg'),
    Image.asset('assets/tigers-d.jpg')
  ];

  int _index = 0;

  List<Image> _listOfImagesForScreen = [];

  void onButtonPressed() {
    setState(() {
      _index++;
      if (_index >= _itemImages.length) {
        _index = 0;
      }
      _listOfImagesForScreen.add(_itemImages[_index]);
      print('Item Name = ' + _listOfImagesForScreen.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Detroit Meets',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Detroit Meets'),
          ),
          body: ListView(children: <Widget>[
            Card(
              margin: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/detroit_meets.jpeg'),
                  Padding(
                    padding: const EdgeInsets.all(8),
                  ),
                ],
              ),
            )
          ]),
          floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add), onPressed: () {onButtonPressed();}),
        ));
  }
}
