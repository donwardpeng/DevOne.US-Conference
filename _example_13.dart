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
            body: Stack(children: <Widget>[
              ListView(children: <Widget>[
                Card(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/cucsc.jpeg'),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                    ],
                  ),
                ),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {},
                )
              ])
            ])));
  }
}
