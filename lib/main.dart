import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Points Counter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const PointsCounter(),
    );
  }
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        style: TextStyle(
                          fontSize: teamAPoints > 99 ? 100 : 150,
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                      ElevatedButton(
                        onPressed: () {
                        setState(() {teamAPoints++;}); // Update the UI
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 15),
                        ),
                        child: const Text('Add 1 Point'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {teamAPoints += 2;});
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Add 2 Points'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {teamAPoints += 3;});
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
                        style: TextStyle(
                          fontSize: teamBPoints > 99 ? 100 : 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          setState(() {teamBPoints++;});
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 15),
                        ),
                        child: const Text('Add 1 Point'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {teamBPoints += 2;});
                        },
                        style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Add 2 Points'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {teamBPoints += 3;});
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Reset'),
          content: const Text('Are you sure you want to reset the points?'),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            ElevatedButton(
              child: const Text('Reset'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
  ),
  child: const Text('Reset Points'),
)
          ],
        ),
    );
  }
}
