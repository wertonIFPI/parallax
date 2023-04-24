import 'package:flutter/material.dart';

import './models/photo.dart';
import './widgets/parallax_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParallaxScroll(),
    );
  }
}

class ParallaxScroll extends StatelessWidget {
  const ParallaxScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: photos.length,
        itemBuilder: (context, index) {
          final imageUrl = photos[index].imageUrl;
          return ParallaxItem(
            imageUrl: imageUrl,
          );
        },
      ),
    );
  }
}
