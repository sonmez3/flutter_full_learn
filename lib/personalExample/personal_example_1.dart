import 'package:flutter/material.dart';

class PersonalExample1 extends StatefulWidget {
  const PersonalExample1({super.key});

  @override
  State<PersonalExample1> createState() => _PersonalExample1State();
}

class _PersonalExample1State extends State<PersonalExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lime),
    );
  }
}
