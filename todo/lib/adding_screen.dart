import 'package:flutter/material.dart';

class AddingScreen extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add Your Todo!")),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: TextField(
                  controller: myController,
                ),
              ),
              FlatButton(
                child: Text("submit"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
