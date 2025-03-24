import 'package:flutter/material.dart';
import 'package:flutter_application_8/src/views/public/dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: SizedBox(
          height: 100,
          width: 300,
          child: OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}