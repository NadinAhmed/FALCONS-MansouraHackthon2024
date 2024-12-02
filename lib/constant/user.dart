class User {
  final String username;
  final String phoneNumber;
  final String email;
  final String address;
  final double rating;
  final String imagePath;

  User({
    required this.username,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.rating,
    required this.imagePath,
  });
}
final List<User> users = [
  User(
    username: "علي أحمد",
    phoneNumber: "01234567890",
    email: "ali.ahmed@example.com",
    address: "المنصورة, حي الجامعة",
    rating: 4.5,
    imagePath: "assets/images/barbar1.png",
  ),
  User(
    username: "مريم محمد",
    phoneNumber: "01122334455",
    email: "mariam.mohamed@example.com",
    address: "القاهرة, شارع محمد علي",
    rating: 4.7,
    imagePath: "assets/images/barbar8.png",
  ),
  User(
    username: "يوسف خالد",
    phoneNumber: "01011223344",
    email: "youssef.khaled@example.com",
    address: "الإسكندرية, حي سموحة",
    rating: 4.3,
    imagePath: "assets/images/barbar7.png",
  ),
  User(
    username: "هبة صالح",
    phoneNumber: "01555667788",
    email: "heba.saleh@example.com",
    address: "طنطا, حي المركز",
    rating: 4.9,
    imagePath: "assets/images/barbar6.png",
  ),

  User(
    username: "سارة إبراهيم",
    phoneNumber: "01222334455",
    email: "sara.ibrahim@example.com",
    address: "الإسماعيلية, حي السلام",
    rating: 4.8,
    imagePath: "assets/images/barbar4.png",
  ),
  User(
    username: "محمد عادل",
    phoneNumber: "01166778899",
    email: "mohamed.adel@example.com",
    address: "أسيوط, حي التعاون",
    rating: 4.4,
    imagePath: "assets/images/barbar3.png",
  ),
  User(
    username: "نهى عبد الرحمن",
    phoneNumber: "01033221144",
    email: "noha.abdelrahman@example.com",
    address: "الزقازيق, شارع السيدة عائشة",
    rating: 4.7,
    imagePath: "assets/images/barbar2.png",
  ),
  User(
    username: "كريم شوقي",
    phoneNumber: "01554332211",
    email: "karim.shawky@example.com",
    address: "دمنهور, حي البحيرة",
    rating: 4.2,
    imagePath: "assets/images/barbar1.png",
  ),
];

