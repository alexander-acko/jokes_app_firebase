import 'package:flutter/material.dart';
import '../services/api_services.dart';
import '../widgets/joke_card.dart';
import '../services/error_handler.dart';

class HomeScreen extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LET ME TELL YOU A JOKE", style: TextStyle(color: Colors.teal, fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.orange, size: 32),
            onPressed: () => Navigator.pushNamed(context, '/favorites'),
          ),
          IconButton(
            icon: Icon(Icons.add_reaction_rounded, color: Colors.amber, size: 32),
            onPressed: () => Navigator.pushNamed(context, '/random'),
          ),
        ],
      ),
      body: FutureBuilder<List<String>>(
        future: apiService.fetchJokeTypes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final jokeTypes = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: jokeTypes.length,
              itemBuilder: (context, index) {
                return JokeCard(jokeType: jokeTypes[index]);
              },
            );
          }
        },
      ),
    );
  }
}
