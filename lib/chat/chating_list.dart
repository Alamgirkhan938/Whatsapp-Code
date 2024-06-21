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

      body: ListView.builder(itemCount: 5,
          itemBuilder: (context,index){
        return ListTile(title: Icon(Icons.add),);
      }),
    );
  }
}
