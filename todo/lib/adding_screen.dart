import 'package:flutter/material.dart';

class AddingScreen extends StatelessWidget {
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
              TextFormField(
                decoration: InputDecoration(hintText: 'Your new Todo!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
