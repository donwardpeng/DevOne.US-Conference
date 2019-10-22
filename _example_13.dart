import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            child: const Icon(Icons.add),
          ),
        ));
  }
}
