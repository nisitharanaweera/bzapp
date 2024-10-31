import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 32, 5, 95)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text area above buttons
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.location_on
                    
                  ),
                  Text(
                'Your Current Location: #### ',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
                ],
              )
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

// New screen widget - Second Screen
class DesrSelScrn extends StatelessWidget {
  const DesrSelScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Destination'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text(
          'G_Maps-Integrated Destination Selection',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

// New screen widget - Third Screen
class RcntTripsScrn extends StatelessWidget {
  const RcntTripsScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recent Trips'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text(
          'Show Frequently used/ Last Travelled Routes',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

// New screen widget - Fourth Screen
class CrntTripScreen extends StatelessWidget {
  const CrntTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Trip Details'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text(
          'Details about the current Trip. unavailable if not boarded',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
