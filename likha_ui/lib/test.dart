import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Disable TextButton Example'),
        ),
        body: const DisableTextButtonExample(),
      ),
    );
  }
}

class DisableTextButtonExample extends StatefulWidget {
  const DisableTextButtonExample({super.key});

  @override
  _DisableTextButtonExampleState createState() => _DisableTextButtonExampleState();
}

class _DisableTextButtonExampleState extends State<DisableTextButtonExample> {
  // Boolean variable to track the state of the TextButton
  bool isTextButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: isTextButtonEnabled
                ? () {
              // Action when TextButton is pressed
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('TextButton pressed')),
              );
            }
                : null,
            style: TextButton.styleFrom(
              backgroundColor: isTextButtonEnabled ? Colors.blue : Colors.grey,
            ), // Setting onPressed to null disables the button
            child: const Text('TextButton'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isTextButtonEnabled = !isTextButtonEnabled;
              });
            },
            child: Text(isTextButtonEnabled ? 'Disable TextButton' : 'Enable TextButton'),
          ),
        ],
      ),
    );
  }
}
