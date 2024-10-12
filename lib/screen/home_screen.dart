// Example of a stateless screen
import 'package:flutter/material.dart';

import '../core/base/orientation_repository.dart';

class HomeScreen extends OrientationAwareStatelessWidget {
  @override
  Widget buildPortrait(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Column(
        children: [
          Text('Portrait Home Layout'),
          // More portrait-specific widgets
        ],
      ),
    );
  }
 
  @override
  Widget buildLandscape(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Row(
        children: [
          Text('Landscape Home Layout'),
          // More landscape-specific widgets
        ],
      ),
    );
  }
}