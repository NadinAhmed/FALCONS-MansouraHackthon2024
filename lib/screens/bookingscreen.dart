import 'package:devfest/screens/date_time.dart';
import 'package:devfest/screens/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for launching URLs
import 'package:devfest/constant/user.dart';// Import User model
import 'package:flutter/services.dart';

import '../constant/colors.dart';
import '../constant/services.dart';
import '../widgets/primary_button.dart';
class BookingScreen extends StatelessWidget {
  final User user; // Add a final User variable to store the passed data

  // Constructor to accept the user data from HomeScreen
  BookingScreen({required this.user});

  // Function to open book link in browser
  Future<void> _openLink(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication); // Open in external browser like Chrome
    } else {
      throw 'Could not launch $url';
    }
  }
  _onSubmitBooking(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SuccessScreen(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Wrap the entire body in SingleChildScrollView
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 300, // Define the height for the image carousel
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Enable horizontal scrolling for images
                    itemCount: user.images.length, // Adjust the length based on the number of images in the User model
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0), // Add spacing between images
                        child: Image.asset(
                          user.images[index], // Access the image from the user's image list
                          width: MediaQuery.of(context).size.width, // Adjust the width of each image
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Navigate back to the previous screen
                    },
                  ),
                ),
              ],
            ),

            // Details Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        user.placename, // Display the username passed from HomeScreen
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 25),
                          SizedBox(width: 4),
                          Text(
                            user.rating.toString(), // Display the rating passed from HomeScreen
                            style: const TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 1),
                  TextButton(
                    onPressed: () {
                      _openLink(user.link);
                    },
                    child: Text(user.address),
                  ),
                  const SizedBox(height: 1),

                  Divider(height: 32, color: Colors.grey[300]),
                  // Contact Section
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(user.barbarimgae), // Display the user's image
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.username, // Display the username passed from HomeScreen
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            user.phoneNumber, // Display the phone number
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(height: 32, color: Colors.grey[300]),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Number of items
                      itemBuilder: (context, index) {
                        return  Card(
                          margin: const EdgeInsets.all(8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 4,
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Photo
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    items[0].photo,
                                    // height: 100,
                                    // width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                // Name
                                Text(
                                  items[0].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                // Price
                                Row(
                                  children: [
                                    Text(
                                      '${items[0].price} جنية' ,
                                      style: const TextStyle(
                                        color: AppColors.successColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Spacer(),
                                    // Time
                                    Text(
                                      '${items[0].time} د',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Datetime(),

                  const Text(
                    'تعليقات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: List.generate(2, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                index == 0 ? 'Ahmed Ali' : 'Mohamed Hassan',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),

            // Bottom Booking Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed:  () {
                // Navigate to BookingScreen and pass the selected user
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessScreen(),
                ),
              );
            },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    // Button color (blue in the image)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                  ),
                  child: Text(
                    "احجز",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16, // Font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
