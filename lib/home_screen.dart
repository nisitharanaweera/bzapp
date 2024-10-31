import 'package:flutter/material.dart';
import 'destination_selection_screen.dart';
import 'recent_trips_screen.dart';
import 'current_trip_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text area above buttons
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    'Your Current Location: #### ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Button to navigate to Second Screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DesrSelScrn()),
                );
              },
              child: const Text('Select Destination'),
            ),
            const SizedBox(height: 10),
            // Button to navigate to Third Screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RcntTripsScrn()),
                );
              },
              child: const Text('Recent Trips'),
            ),
            const SizedBox(height: 10),
            // Button to navigate to Fourth Screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CrntTripScreen()),
                );
              },
              child: const Text('Current Trip'),
            ),
          ],
        ),
      ),
    );
  }
}
