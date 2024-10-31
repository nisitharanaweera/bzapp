import 'package:flutter/material.dart';

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
