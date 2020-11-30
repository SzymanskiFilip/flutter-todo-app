import 'package:flutter/material.dart';

class AddingScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add Your Todo!")),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Your new Todo!'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a new Todo!';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
