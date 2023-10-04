import 'package:flutter/material.dart';
import 'package:fluttertinder/profiles/application/tinder_profile.dart';
import 'package:fluttertinder/profiles/data/profiles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CreateProfileButton(),
      body: PageView(
        children: profiles.map((e) {
          return Center(
            child: TinderProfileDisplay(tinderProfile: e),
          );
        }).toList(),
      ),
    );
  }
}

class CreateProfileButton extends StatelessWidget {
  const CreateProfileButton({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (_) {
                return  ProfileaddForm();
              },barrierDismissible: true);
        },
        child: const Icon(
          Icons.person_add_alt_1_outlined,
          size: 50,
        ),
      );
}


