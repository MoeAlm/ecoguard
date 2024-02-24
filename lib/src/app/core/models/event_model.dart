class Event {
  final String title;
  final String tag;
  final String dateTime;
  final String startingTime;
  final String image;
  final String about;
  final String location;
   bool isJoined = false;

  Event({
    required this.title,
    required this.tag,
    required this.dateTime,
    required this.startingTime,
    required this.image,
    required this.about,
    required this.location,
    required this.isJoined,
  });
}

List<Event> eventList = [
  Event(
      title: 'Green Area',
      tag: 'Collaboration',
      dateTime: '21',
      startingTime: '9:10 AM',
      image: 'assets/images/trees.jpg',
      about: 'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit. '
          'Venenatis pulvinar a amet in, suspendisse vitae, posuere eu tortor et. Und commodo, '
          'fermentum, mauris leo eget.',
      location: '',
      isJoined: false),
  Event(
      title: 'Flooding',
      tag: 'Environmental Issue',
      dateTime: '11',
      startingTime: '9:10 AM',
      image: 'assets/images/flooding.jpeg',
      about: 'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit. '
          'Venenatis pulvinar a amet in, suspendisse vitae, posuere eu tortor et. Und commodo, '
          'fermentum, mauris leo eget.',
      location: '',
      isJoined: false),
];
List<Event> forYouList = [
  Event(
      title: 'bushfires',
      tag: 'Emergency',
      dateTime: '21',
      startingTime: '12:10 PM',
      image: 'assets/images/fire.jpg',
      about: 'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit. '
          'Venenatis pulvinar a amet in, suspendisse vitae, posuere eu tortor et. Und commodo, '
          'fermentum, mauris leo eget.',
      location: '',
      isJoined: false),
  Event(
      title: 'Earth Quick',
      tag: 'Environmental Issue',
      dateTime: '11',
      startingTime: '9:20 AM',
      image: 'assets/images/water.jpg',
      about: 'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit. '
          'Venenatis pulvinar a amet in, suspendisse vitae, posuere eu tortor et. Und commodo, '
          'fermentum, mauris leo eget.',
      location: '',
      isJoined: false),
];
List<Event> reportList = [
  Event(
      title: 'Derna Flooding',
      tag: 'Emergency',
      dateTime: '11',
      startingTime: '12:10 PM',
      image: 'assets/images/fire.jpg',
      about: 'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit. '
          'Venenatis pulvinar a amet in, suspendisse vitae, posuere eu tortor et. Und commodo, '
          'fermentum, mauris leo eget.',
      location: '',
      isJoined: false),
  Event(
      title: 'Derna Flooding',
      tag: 'Emergency',
      dateTime: '11',
      startingTime: '12:10 PM',
      image: 'assets/images/fire.jpg',
      about: 'Lorem ipsum dolor sit amet, consectetur elit adipiscing elit. '
          'Venenatis pulvinar a amet in, suspendisse vitae, posuere eu tortor et. Und commodo, '
          'fermentum, mauris leo eget.',
      location: '',
      isJoined: false),
];
