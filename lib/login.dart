import 'package:flutter/material.dart';
import 'package:flutter_application_2/aboutus.dart';
import 'package:flutter_application_2/display.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _username = TextEditingController();
  final _age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Winyarit")),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Aboutus()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                child: const Text("Username :"),
              ),
              Expanded(
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Insert Here",
                    labelText: 'Username',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 150,
                child: const Text("Password :"),
              ),
              Expanded(
                child: TextField(
                  controller: _age,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Insert Here",
                    labelText: 'Age',
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
                  onPressed: () {
                    String input = _username.text;
                    int inputAge = int.parse(_age.text);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayPage(
                            name: input,
                            age: inputAge,
                        ),
                        ),
                    );
                  },
                  child: const Text(
                    'OK Button',
                    style: TextStyle(fontSize: 30),
                  )),
        ],
      ),
    );
  }
}
