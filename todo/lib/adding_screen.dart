import 'package:flutter/material.dart';
import 'package:todo/main.dart';

class AddingScreen extends StatefulWidget {
  @override
  _AddingScreenState createState() => _AddingScreenState();
}

class _AddingScreenState extends State<AddingScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

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
                onPressed: () {
                  setState(() {
                    items.add(myController.text);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
