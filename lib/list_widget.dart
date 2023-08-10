import 'package:flutter/material.dart';
import 'list_improved.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  var counterList = List<int>.empty(growable: true);

  @override
  initState() {
    counterList = List<int>.generate(100, (_) => 0);
    super.initState();
  }

  @override
  dispose() {
    counterList.clear();
    super.dispose();
  }

  _incrementCount(int index, int value) {
    setState(() => counterList[index] = value);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) => ListItemWidget(
        saveCount: (count) => _incrementCount(index, count),
        count: counterList[index],
        number: index + 1,
      ),
    );
  }
}
