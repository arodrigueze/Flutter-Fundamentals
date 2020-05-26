class Goal {
  final String id;
  final String name;
  final String description;
  final double price;
  DateTime expectedDate;
  int image;
  final bool favorite;

  Goal(this.id, this.name, this.description, this.price, this.expectedDate, this.image, this.favorite);
}