import 'package:flutter/material.dart';

class JokeCard extends StatelessWidget {
  final String jokeType;

  JokeCard({required this.jokeType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/jokes', arguments: jokeType);
      },
      child: Card(
        color: Colors.primaries[jokeType.hashCode % Colors.primaries.length],
        child: Center(
          child: Text(
            jokeType.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}