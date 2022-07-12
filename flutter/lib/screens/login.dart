import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_is_fantastic/navigator/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();

}

class LoginState extends State<Login> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextStyle style = const TextStyle(
    fontSize: 24
  );
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24
              ),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Center(
                          child: Text("Welcome to \nour\napplication",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          )
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        controller: _username,
                        obscureText: false,
                        style: style,
                        validator: _textValidation,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                          controller: _password,
                          obscureText: true,
                          style: style,
                          validator: _textValidation
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).pushNamed(
                                  Routes.DASHBOARD
                              );
                            }
                          },
                          child: const Text("Login")
                      ),
                      const SizedBox(height: 8)
                    ],
                  )
              )
          )
        )
      )
    );
  }

  String? _textValidation(String? text) {
    if (text == null || text.length < 3) {
      return "Please enter correct value";
    }
    return null;
  }
}