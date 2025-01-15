import 'package:flutter/material.dart';

class JokeItem extends StatelessWidget {
  final String setup;
  final String punchline;

  JokeItem({required this.setup, required this.punchline});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(setup),
        subtitle: Text(punchline),
      ),
    );
  }
}
