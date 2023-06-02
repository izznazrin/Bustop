import 'package:flutter/material.dart';

class BusStopList extends StatelessWidget {
  const BusStopList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Stop List'),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
