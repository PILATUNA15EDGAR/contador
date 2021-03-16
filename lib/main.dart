import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}


class CounterApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Veces que has apretado el boton'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ));
  }
}
 


