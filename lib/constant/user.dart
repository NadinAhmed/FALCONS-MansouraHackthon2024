
final List<String> shopNames = [
  "Elegant Salon",
  "Royal Beauty",
  "Creative Cuts",
  "Golden Hands",
  "Refined Look",
  "Crystal Style",
  "Dream Salon",
  "Youth Touch",
  "Smooth Edge",
  "Art & Beauty"
];

class User {
  final String placename;
  final String username;
  final String phoneNumber;
  final String email;
  final String address;
  final double rating;
  final List<String> images;
  final String barbarimgae;
  final String link;

  User({
    required this.placename,
    required this.username,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.rating,
    required this.images,
    required this.barbarimgae,
    required this.link,
  });
}
final List<User> users = [
  User(
    placename:shopNames[0] ,
    username: "علي أحمد",
    phoneNumber: "01234567890",
    email: "ali.ahmed@example.com",
    address: "المنصورة, حي الجامعة",
    rating: 4.5,
    images:[ "assets/images/barbar1.png",
      "assets/images/barbar3.png"
    ],
    barbarimgae: "assets/images/barbarimage8.png",
    link: "https://www.google.com/maps/place/Mansoura,+Mansoura+Qism+2,+El+Mansoura,+Dakahlia+Governorate/@31.0413861,31.3828396,13z/data=!3m1!4b1!4m6!3m5!1s0x14f79db7a9053547:0xf8dab3bbed766c97!8m2!3d31.0409483!4d31.3784704!16zL20vMDI5cGxk?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
  ),
  User(
    placename:shopNames[1] ,
    username: "مريم محمد",
    phoneNumber: "01122334455",
    email: "mariam.mohamed@example.com",
    address: "القاهرة, شارع محمد علي",
    rating: 4.7,
    images: ["assets/images/barbar8.png",
    ],
    barbarimgae: "assets/images/barbarimage1.png",
    link: "https://shorturl.at/0zRxS"
  ),
  User(
      placename:shopNames[2] ,
    username: "يوسف خالد",
    phoneNumber: "01011223344",
    email: "youssef.khaled@example.com",
    address: "الإسكندرية, حي سموحة",
    rating: 4.3,
    images: ["assets/images/barbar7.png",
    ],
    barbarimgae: "assets/images/barbarimage2.png",
    link: "https://shorturl.at/0zRxS"
  ),
  User(
      placename:shopNames[3] ,
    username: "هبة صالح",
    phoneNumber: "01555667788",
    email: "heba.saleh@example.com",
    address: "طنطا, حي المركز",
    rating: 4.9,
    images: ["assets/images/barbar6.png",
    ],
    barbarimgae: "assets/images/barbarimage3.png",
    link: "https://shorturl.at/0zRxS"
  ),

  User(
      placename:shopNames[4] ,
    username: "سارة إبراهيم",
    phoneNumber: "01222334455",
    email: "sara.ibrahim@example.com",
    address: "الإسماعيلية, حي السلام",
    rating: 4.8,
    images: ["assets/images/barbar4.png",
    ],
    barbarimgae: "assets/images/barbarimage4.png",
    link: "https://shorturl.at/0zRxS"
  ),
  User(
      placename:shopNames[5] ,
    username: "محمد عادل",
    phoneNumber: "01166778899",
    email: "mohamed.adel@example.com",
    address: "أسيوط, حي التعاون",
    rating: 4.4,
    images: ["assets/images/barbar3.png",
    ],
    barbarimgae: "assets/images/barbarimage5.png",
    link: "https://shorturl.at/0zRxS"
  ),
  User(
      placename:shopNames[6] ,
    username: "نهى عبد الرحمن",
    phoneNumber: "01033221144",
    email: "noha.abdelrahman@example.com",
    address: "الزقازيق, شارع السيدة عائشة",
    rating: 4.7,
    images:[ "assets/images/barbar2.png",
    ],
    barbarimgae: "assets/images/barbarimage6.png",
    link: "https://shorturl.at/0zRxS"
  ),
  User(
      placename:shopNames[7] ,
    username: "كريم شوقي",
    phoneNumber: "01554332211",
    email: "karim.shawky@example.com",
    address: "دمنهور, حي البحيرة",
    rating: 4.2,
    images: ["assets/images/barbar1.png",
    ],
    barbarimgae: "assets/images/barbarimage7.png",
    link: "https://shorturl.at/0zRxS"
  ),
];

