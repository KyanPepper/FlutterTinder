// Define a custom Form widget.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertinder/profiles/data/profiles.dart';

class ProfileaddForm extends ConsumerWidget {
  ProfileaddForm({super.key});

// This class holds data related to the form.

  final usernameController = TextEditingController();
  final bioController = TextEditingController();
  final hobbiesController = TextEditingController();
  final signController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            const Text("Name"),
            TextFormField(
              controller: usernameController,
            ),
            const Text("Bio"),
            TextFormField(
              controller: bioController,
            ),
            const Text("Hobbies"),
            TextFormField(
              controller: hobbiesController,
            ),
            const Text("Star Sign"),
            TextFormField(
              controller: signController,
            ),
            // Add TextFormFields and ElevatedButton here.
            ElevatedButton(
                onPressed: () {
                  TinderProfile Person = TinderProfile(
                      name: usernameController.text,
                      description: bioController.text,
                      starsign: signController.text,
                      hobbies: hobbiesController.text);
                  ref
                      .read(tinderProvider.notifier)
                      .update((state) => [...state, Person]);
                  Navigator.of(context).pop();
                },
                child: const Text('Add')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('exit'))
          ],
        ),
      ),
    );
  }
}
