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
    );

    TextField num2 = const TextField(
      keyboardType: TextInputType.number,
    );

    ElevatedButton button = ElevatedButton(
      onPressed: () {},
      child: const Text('Add'),
    );

    Column columns = Column(
      children: [
        num1,
        num2,
        button,
      ],
    );
    return MaterialApp(
        title: 'Calculator',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Calculator'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: columns,
          ),
        ));
  }
}
