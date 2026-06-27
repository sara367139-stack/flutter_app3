import 'package:flutter/material.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
 
 int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:Text("sara"),
    ),
   
body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
floatingActionButton: FloatingActionButton(
  onPressed: () {
    setState(() {
      counter++;
    });
  },
  child: const Icon(Icons.add),
),

    );
  }
}
