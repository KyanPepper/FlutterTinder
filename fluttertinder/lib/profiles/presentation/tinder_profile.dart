import 'package:flutter/material.dart';
import 'package:fluttertinder/profiles/data/profiles.dart';

class TinderProfileDisplay extends StatelessWidget {
  final TinderProfile tinderProfile;
  const TinderProfileDisplay({super.key, required this.tinderProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tinderProfile.name)),
      body: Column(children: [
        Image.asset(
          tinderProfile.image,
          height: 400,
          width: 400,
        ),
        const Spacer(),
        Text('Bio:${tinderProfile.description}',
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        Text('Hobbies: ${tinderProfile.hobbies}',
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        Text('StarSign: ${tinderProfile.starsign}',
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        const SizedBox(height: 100)
      ]),
    );
  }
}
