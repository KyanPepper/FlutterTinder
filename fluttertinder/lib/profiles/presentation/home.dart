import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertinder/profiles/presentation/profile_form.dart';
import 'package:fluttertinder/profiles/presentation/tinder_profile.dart';
import 'package:fluttertinder/profiles/data/profiles.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Profiles = ref.watch(tinderProvider);
    return Scaffold(
      floatingActionButton: const CreateProfileButton(),
      body: PageView(
        children: Profiles.map((e) {
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
              builder: (_) => ProfileaddForm(),
              barrierDismissible: true);
        },
        child: const Icon(
          Icons.person_add_alt_1_outlined,
          size: 50,
        ),
      );
}
