import 'package:flutter/material.dart';

import '../model/user.dart';

class MyListTile extends StatefulWidget {
  final String name;
  final String city;
  List<User> userList;
  int index;
  MyListTile(
      {Key? key,
      required this.name,
      required this.city,
      required this.userList,
      required this.index})
      : super(key: key);

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        child: ListTile(
          trailing: TextButton(
            onPressed: () {
              setState(() {
                widget.userList.removeAt(widget.index);
              });
            },
            child: const Icon(Icons.delete),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          title: Text('Name: ${widget.name}'),
          subtitle: Text('City: ${widget.city}'),
        ),
      ),
    );
  }
}
