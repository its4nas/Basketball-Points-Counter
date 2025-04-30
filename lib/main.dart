import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {

  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Points Counter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          // Increment Team A points
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 15),
                        ),
                        child: const Text('Add 1 Point'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Increment Team A points
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Add 2 Points'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Increment Team A points
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Add 3 Points'),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(
                  height: 400, // Adjust height as needed
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          // Increment Team A points
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 15),
                        ),
                        child: const Text('Add 1 Point'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Increment Team A points
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Add 2 Points'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Increment Team A points
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Add 3 Points'),
                      ),
                    ],
                  ),
                ),
                
              ],
              ),
            const SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
              // Reset points
              },
              style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: const Text('Reset Points'),
            ),

          ],
          
        ),
      ),
    );
  }
}
