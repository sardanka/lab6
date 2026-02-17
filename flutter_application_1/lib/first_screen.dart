import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
          },
          child: Text('Push'),
          ),
          ElevatedButton(
            onPressed:() {
              Navigator.pushNamed(context, '/second');
          },
          child: Text('PushNamed'),
          ),
          ElevatedButton(
            onPressed:() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
          },
          child: Text('PushReplacement'),
          ),
          ElevatedButton(
            onPressed:() {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> SecondScreen()),(Route)=>false);
          },
          child: Text('PushAndRemoveUntil'),
          ),
          ElevatedButton(
            onPressed:() {
              Navigator.pushNamedAndRemoveUntil(context, '/second',(Route)=>false);
          },
          child: Text('PushNamedAndRemoveUntil'),
          ),
        ],
        ),
      );
  }
}