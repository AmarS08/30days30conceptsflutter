import 'package:flutter/material.dart';
import 'package:thirtyconcepts/functions/authFunctions.dart';

class Day24Authentication extends StatefulWidget {
  Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '', password = '', userName = '';
  bool getIsPasswordCompliant(String value) {
    String password = value;
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialCharacters =
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length > 8;
    return hasUppercase &&
        hasLowercase &&
        hasDigits &&
        hasSpecialCharacters &&
        hasMinLength;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email/Password Auth'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLogin)
                TextFormField(
                  key: const ValueKey('username'),
                  decoration:
                      const InputDecoration(hintText: "Enter User Name"),
                  validator: (value) {
                    if (value.toString().length <= 6) {
                      return 'UserName is too Small';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      userName = value ?? "";
                    });
                  },
                ),
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (!(value.toString().contains('@') ||
                      value.toString().contains('.'))) {
                    return 'Enter valid email id';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value ?? "";
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration: const InputDecoration(hintText: "Enter Password"),
                validator: (value) {
                  var passwordCorrect = getIsPasswordCompliant(value ?? "");
                  if (passwordCorrect) {
                    return null;
                  } else {
                    return 'Enter correct Password with Length greater than or equal to 8 and Should include a capital letter and a special Symbol and a digit';
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value ?? "";
                  });
                },
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      (isLogin)
                          ? signUpFireBaseAuthentication(email, password)
                          : loginFireBaseAuthentication(email, password);
                    }
                  },
                  child: Text((isLogin) ? "Sign Up" : "Login"),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text((isLogin)
                    ? "Already Signed Up? Login"
                    : "Don't Have an Account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
