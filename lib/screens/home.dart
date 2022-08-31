import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider_demo/widget/button.dart';
import 'package:provider_demo/widget/list_tile.dart';
import 'package:provider_demo/widget/list_view.dart';
import 'package:provider_demo/widget/text_field.dart';

import '../model/user.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> userList = [];

  final formKey = GlobalKey<FormState>();

  User singleUser = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                MyTextField(
                    label: 'Name',
                    onSaved: (value) {
                      singleUser.name = value;
                    }),
                MyTextField(
                  label: 'City',
                  onSaved: (value) {
                    singleUser.city = value;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                        buttonText: 'ADD',
                        onPressed: () {
                          setState(() {
                            formKey.currentState!.save();
                            userList.add(singleUser);
                            singleUser = User();
                          });
                        }),
                    MyButton(buttonText: 'Show List'),
                  ],
                ),
                MyListView(
                  list: userList,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
