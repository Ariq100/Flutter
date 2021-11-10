import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          leading: Icon(Icons.accessibility),
          title: Text("my first flutter"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.remove), onPressed: _decrementCounter,),
            IconButton(icon: Icon(Icons.add), onPressed: _incrementCounter,),
          ],
        ),
      body: Center(
          child: Text('$_counter', style: TextStyle(fontSize: 50.0)),
      ),
    );
  }
}
