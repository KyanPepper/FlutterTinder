import 'package:flutter/material.dart';
import 'package:fluttertinder/profiles/data/profiles.dart';

class TinderProfileDisplay extends StatelessWidget {
  final TinderProfile tinderProfile;
  const TinderProfileDisplay({super.key, required this.tinderProfile});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(
          "${tinderProfile.name} ${tinderProfile.description} ${tinderProfile.hobbies} ${tinderProfile.starsign}"),
    );
  }
}