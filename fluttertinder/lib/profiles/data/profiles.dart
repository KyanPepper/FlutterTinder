class TinderProfile {
  final String name;
  final String description;
  final String starsign;
  final String hobbies;
  final String image;

  TinderProfile(
      {required this.name,
      required this.description,
      required this.starsign,
      required this.hobbies,
      this.image = "lib/profiles/data/images/defPic.png"});
}

final List<TinderProfile> profiles = [
  TinderProfile(
      name: 'Adam',
      description: 'I love hiking and reading.',
      starsign: 'Aries',
      hobbies: 'Fishing',
      image: "lib/profiles/data/images/adam.png"),
  TinderProfile(
      name: 'Peter',
      description: 'I enjoy traveling and cooking.',
      starsign: 'Leo',
      hobbies: 'Painting',
      image: "lib/profiles/data/images/peter.png"),
  TinderProfile(
      name: 'Ben',
      description: 'I love eating worms and other bacteria',
      starsign: 'Capricorn',
      hobbies: 'Mountain Goat Hunting',
      image: "lib/profiles/data/images/ben.png"),
  TinderProfile(
      name: 'Kyan',
      description: 'I am a programmer',
      starsign: 'Cancer',
      hobbies: 'Coding in flutter',
      image: "lib/profiles/data/images/Saltkyan.png")
];
