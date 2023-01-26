import 'package:flutter/material.dart';
import 'package:lab06/pages/login.dart';
import 'package:lab06/services/auth_service.dart';

class complete extends StatefulWidget {
  const complete({super.key});

  @override
  State<complete> createState() => _completeState();
}

class _completeState extends State<complete>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Text("Login complete"),
            Icon(Icons.check_outlined, color: Colors.green),
            ElevatedButton(
                onPressed: () {
                  AuthService.logOutUser();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
                child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}
