class Services {
  final String photo;
  final String name;
  final double price;
  final double time;

  Services({
    required this.photo,
    required this.name,
    required this.price,
    required this.time,
  });
}
final List<Services> items = [
  Services(photo: "assets/images/classic_cut.jpg", name: "Classic Cut", price: 20, time: 10),
  Services(photo: "https://via.placeholder.com/150", name: "Classic Cut", price: 20, time: 10.0),
  Services(photo: "https://via.placeholder.com/150", name: "Classic Cut", price: 20, time: 10.0),
];
