class Account {
  String name;
  int numFollowers;
  String imageLocation;
  bool verified;

  Account({this.name, this.numFollowers, this.imageLocation, this.verified})
      : assert(name != null);

  static List<Account> accountsList = [
    Account(
      name: 'Andrea Wise',
      numFollowers: 11500,
      imageLocation: '1.jpg',
      verified: true,
    ),
    Account(
      name: 'Tom Smith',
      numFollowers: 11500,
      imageLocation: '2.jpg',
      verified: false,
    ),
    Account(
      name: 'Samantha William',
      numFollowers: 11500,
      imageLocation: '3.jpg',
      verified: true,
    ),
    Account(
      name: 'Andy Hope',
      numFollowers: 11500,
      imageLocation: '4.png',
      verified: true,
    ),
    Account(
      name: 'Karen Rose',
      numFollowers: 11500,
      imageLocation: '5.png',
      verified: false,
    ),
    Account(
      name: 'William Wise',
      numFollowers: 11500,
      imageLocation: '6.jpeg',
      verified: true,
    ),
  ];
}
