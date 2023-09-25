import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Tinder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class TinderProfile {
  String name;
  String description;
  String starsign;
  String hobbies;

  TinderProfile({
    this.name = '',
    this.description = '',
    this.starsign = '',
    this.hobbies = '',
  });
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TinderProfile adam = TinderProfile(
  name: 'Adam',
  description: 'I love hiking and reading.',
  starsign: 'Aries',
  hobbies: 'Fishing',
);

TinderProfile pete = TinderProfile(
  name: 'Peter',
  description: 'I enjoy traveling and cooking.',
  starsign: 'Leo',
  hobbies: 'Painting',
);
  
TinderProfile ben = TinderProfile(
  name: 'Ben',
  description: 'I love eating worms and other bacteria',
  starsign: 'Capricorn',
  hobbies: 'Mountain Goat Hunting',
);
TinderProfile kyan = TinderProfile(
  name: 'Kyan',
  description: 'I am a programmer',
  starsign: 'Cancer',
  hobbies: 'Coding in flutter',
);

  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
