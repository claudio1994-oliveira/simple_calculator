import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = "";
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.blueGrey,
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Número 1',
        ),
        onChanged: (value) {
          number1 = double.parse(value);
        });

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(
        fontSize: 20.0,
        color: Colors.blueGrey,
      ),
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Número 2',
      ),
      onChanged: (value) => number2 = double.parse(value),
    );

    ElevatedButton button = ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () {
        setState(() {
          double calc = number1 + number2;
          this.result = "Resultado: $calc";
        });
      },
      child: const Text('Soma'),
    );

    Text result = Text(this.result,
        style: const TextStyle(
          fontSize: 15.0,
          color: Colors.blueGrey,
        ));

    Padding separator = const Padding(padding: EdgeInsets.all(8.0));

    Column columns = Column(
      children: [
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          width: double.infinity,
          child: button,
        ),
        separator,
        result,
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
