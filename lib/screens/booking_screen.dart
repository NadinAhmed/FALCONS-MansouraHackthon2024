import 'package:devfest/constant/colors.dart';
import 'package:devfest/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant/sevices.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final dataFormatter = DateFormat.yMd();
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  void _showTimePicker() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = DateTime(9999);
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor,
            ),
          ),
          child: child!,
        );
      },
    );
    _selectedDate = pickedDate;

    setState(() {
      _selectedDate;
    });
  }

  void _onSubmitBooking() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 240,
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
            const SizedBox(height: 100),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: _presentDatePicker,
                    icon: const Icon(Icons.calendar_month),
                    iconSize: 30,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    _selectedDate == null
                        ? 'لا يوجد موعد محدد'
                        : dataFormatter.format(_selectedDate!),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.access_time_sharp),
                    onPressed: _showTimePicker,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    _selectedTime == null
                        ? 'لا يوجد وقت محدد'
                        : _selectedTime!.format(context),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            PrimaryButton(
              onClicked: _onSubmitBooking,
            )
          ],
        ),
      ),
    );
  }
}

final List<Services> items = [
  Services(photo: "assets/images/classic_cut.jpg", name: "Classic Cut", price: 20, time: 10),
  Services(photo: "https://via.placeholder.com/150", name: "Classic Cut", price: 20, time: 10.0),
  Services(photo: "https://via.placeholder.com/150", name: "Classic Cut", price: 20, time: 10.0),
];