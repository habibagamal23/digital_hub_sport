import 'package:flutter/material.dart';

class VolleyballPlayerDetails extends StatelessWidget {
  final String playerId;

  const VolleyballPlayerDetails({Key? key, required this.playerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Details - $playerId'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Player Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text('Player ID: $playerId'),
            const SizedBox(height: 16),
            const Text('More details about the player will go here...'),
          ],
        ),
      ),
    );
  }
}
