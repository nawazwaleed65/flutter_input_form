import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputForm(),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _controller = TextEditingController();
  String _displayText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Form')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _controller),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _displayText = _controller.text;
                });
              },
              child: Text('Submit', style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                backgroundColor: Colors.green,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 20),
            Text(_displayText, style: TextStyle(
              fontSize: 23
            ),),
          ],
        ),
      ),
    );
  }
}
