import 'package:flutter/material.dart';
import 'package:fluttertinder/profiles/data/profiles.dart';

class TinderProfileDisplay extends StatelessWidget {
  final TinderProfile tinderProfile;
  const TinderProfileDisplay({super.key, required this.tinderProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tinderProfile.name)),
      body: Stack(children: [
        Positioned(
            top: 40,
            right: 0,
            child: Image.asset(
              tinderProfile.image,
              height: 400,
              width: 400,
            )),
        Positioned(
          top: 500,
          right: 100,
          child: Text('Bio: ' + tinderProfile.description),
        ),
        Positioned(
            top: 575,
            right: 150,
            child: Text('Hobbies: ' + tinderProfile.hobbies)),
        Positioned(
            top: 650,
            right: 150,
            child: Text('StarSign: ' + tinderProfile.starsign))
      ]),
    );
  }
}

// Define a custom Form widget.
class ProfileaddForm extends StatefulWidget {
  const ProfileaddForm({super.key});

  @override
  FormState createState() {
    return FormState();
  }
}

// This class holds data related to the form.
class FormState extends State<ProfileaddForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController hobbiesController = TextEditingController();
  TextEditingController signController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
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
                  TinderProfile addPerson = TinderProfile(
                      name: usernameController.text,
                      description: bioController.text,
                      starsign: signController.text,
                      hobbies: hobbiesController.text);
                  profiles.add(addPerson);
                  debugPrint(profiles.toString());
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
