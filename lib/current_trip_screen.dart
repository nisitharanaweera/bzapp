import 'package:flutter/material.dart';

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
