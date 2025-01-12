import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/route/approuter.dart';

class VolleyballHome extends StatelessWidget {
  const VolleyballHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Example of players list
          ListTile(
            title: const Text('Player 1'),
            subtitle: const Text('Position: Forward'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to player details screen
              context.push(ConstantsRoutes.volleyballPlayerDetails,
                  extra: 'player1');
            },
          ),
        ],
      ),
    );
  }
}
