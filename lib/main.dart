import 'package:flutter/material.dart';
import 'package:form_assignment_design/screens/sign_up_screen.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignUpScreen());
  }
}
