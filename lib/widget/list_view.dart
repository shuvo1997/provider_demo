import 'package:flutter/material.dart';

import '../model/user.dart';
import 'list_tile.dart';

class MyListView extends StatefulWidget {
  List<User> list;
  MyListView({Key? key, required this.list}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return MyListTile(
            name: widget.list[index].name!,
            city: widget.list[index].city!,
            userList: widget.list,
            index: index,
          );
        });
  }
}
