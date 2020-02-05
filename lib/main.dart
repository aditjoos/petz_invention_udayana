import 'package:flutter/material.dart';

import 'components/Dialogs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PETZ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PETZ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void myShowDialog(){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => FunkyOverlay('Petz!', [
        FlatButton(
          color: Colors.indigo[300],
          child: Text('OK'),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'PETZ',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => myShowDialog(),
        tooltip: 'Dialog',
        child: Icon(Icons.send),
      ),
    );
  }
}
