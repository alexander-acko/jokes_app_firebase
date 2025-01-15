import 'package:flutter/material.dart';
import '../providers/favorites_provider.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<FavoritesProvider>().favorites;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Jokes"),
      ),
      body: favorites.isEmpty
          ? Center(
        child: Text(
          "No favorite jokes yet!",
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final joke = favorites[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(joke.setup),
              subtitle: Text(joke.punchline),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  context.read<FavoritesProvider>().toggleFavorite(joke);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
