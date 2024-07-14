import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  String firstName = "";
  String lastName = "";
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter First Name"),
                  key: ValueKey('firstName'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'First Name should not be Empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstName = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Last Name"),
                  key: ValueKey('lastName'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Last Name should not be Empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastName = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Email address"),
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Email should not be Empty and should end with xyz@abc.com';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Enter Password"),
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value.toString().isEmpty &&
                        value.toString().length <= 7) {
                      return 'Password should not be Empty and should be equal to or greater than 8 digits';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                  onPressed: () {
                    try {
                      final isValid = _formKey.currentState!.validate();
                      if (isValid) {
                        _formKey.currentState!.save();
                        print("First Name : " + firstName);
                        print("Last Name : " + lastName);
                        print("Email : " + email);
                        print("Password : " + password);
                      } else {
                        print("Error");
                      }
                    } catch (e) {
                      print(e.toString());
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
