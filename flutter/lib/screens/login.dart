import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24
          ),
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
              TextField(
                controller: _username,
                obscureText: false,
                style: style,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _password,
                obscureText: true,
                style: style,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => {},
                child: const Text("Login")
              ),
              const SizedBox(height: 8)
            ],
          )
        )
      )
    );
  }
}