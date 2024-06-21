import 'package:flutter/material.dart';


class ChatingList extends StatefulWidget {
  const ChatingList({super.key});

  @override
  State<ChatingList> createState() => _ChatingListState();
}

class _ChatingListState extends State<ChatingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('chating list'),),
      body: Container(),
    );
  }
}
