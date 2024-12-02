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
  Services(photo: "assets/images/s1.png", name: "Classic Cut", price: 20, time: 10),
  Services(photo: "assets/images/s2.png", name: "Classic Cut", price: 20, time: 10.0),
  Services(photo: "assets/images/s3.png", name: "Classic Cut", price: 20, time: 10.0),
  Services(photo: "assets/images/s4.png", name: "Classic Cut", price: 20, time: 10.0),
  Services(photo: "assets/images/s5.png", name: "Classic Cut", price: 20, time: 10.0),
];
