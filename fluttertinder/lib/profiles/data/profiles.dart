class TinderProfile {
  final String name;
  final String description;
  final String starsign;
  final String hobbies;

  TinderProfile(
      {required this.name,
      required this.description,
      required this.starsign,
      required this.hobbies});
}

final List<TinderProfile> profiles = [
  TinderProfile(
    name: 'Adam',
    description: 'I love hiking and reading.',
    starsign: 'Aries',
    hobbies: 'Fishing',
  ),
  TinderProfile(
    name: 'Peter',
    description: 'I enjoy traveling and cooking.',
    starsign: 'Leo',
    hobbies: 'Painting',
  ),
  TinderProfile(
    name: 'Ben',
    description: 'I love eating worms and other bacteria',
    starsign: 'Capricorn',
    hobbies: 'Mountain Goat Hunting',
  ),
  TinderProfile(
    name: 'Kyan',
    description: 'I am a programmer',
    starsign: 'Cancer',
    hobbies: 'Coding in flutter',
  )
];
