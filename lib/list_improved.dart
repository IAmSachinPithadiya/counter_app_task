import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    super.key,
    required this.saveCount,
    required this.count,
    required this.number,
  });
  final Function(int) saveCount;
  final int count;
  final int number;
  final textStyle = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Text(
          "No. $number",
          style: const TextStyle(fontSize: 15, color: Colors.blueGrey),
        ),
        title: Center(
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Text(count.toString(), style: textStyle),
          ),
        ),
        trailing: IconButton(
          onPressed: () => saveCount(count + 1),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
          ),
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
