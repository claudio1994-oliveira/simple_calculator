import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextField num1 = const TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.blueGrey,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Número 1',
        ));

    TextField num2 = const TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.blueGrey,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Número 2',
        ));

    ElevatedButton button = ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () {},
      child: const Text('Soma'),
    );

    Padding separator = Padding(padding: const EdgeInsets.all(8.0));

    Column columns = Column(
      children: [
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          width: double.infinity,
          child: button,
        )
      ],
    );
    return MaterialApp(
        title: 'Calculator',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Calculator'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: columns,
          ),
        ));
  }
}
