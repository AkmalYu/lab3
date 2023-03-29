import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounterPlus() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounterMinus() {
    setState(() {
      _counter--;
    });
  }
  void _incrementCounterReset() {
    setState(() {
      _counter=0;
    });
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
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: _incrementCounterMinus,
                  style: TextButton.styleFrom(backgroundColor: Colors.red,),
                  child: const Text("-", style: TextStyle(fontSize: 25, color: Colors.black),),
                ),
                TextButton(
                  onPressed: _incrementCounterPlus,
                  style: TextButton.styleFrom(backgroundColor: Colors.green,),
                  child: const Text("+", style: TextStyle(fontSize: 25, color: Colors.black),),
                )
              ],
            ),
            TextButton(
              onPressed: _incrementCounterReset,
              child: const Text("Сбросить"),
            ),
          ],
        ),
      ),
    );
  }
}
