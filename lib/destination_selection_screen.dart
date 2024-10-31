import 'package:flutter/material.dart';

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
