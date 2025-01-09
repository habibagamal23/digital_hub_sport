import 'package:flutter/material.dart';

import '../data/model/sports_data.dart';
import 'card.dart';


class ChooseSportScreen extends StatelessWidget {
  const ChooseSportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Choose Sport',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: sports.length,
                itemBuilder: (context, index) {
                  final sport = sports[index];
                  return SportCard(
                    name: sport.name,
                    iconPath: sport.iconPath,
                    onTap: () {
                      Navigator.pushNamed(context, '/${sport.name.toLowerCase()}');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
