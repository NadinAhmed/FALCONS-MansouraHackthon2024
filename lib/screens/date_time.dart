import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant/colors.dart';

class Datetime extends StatefulWidget {
  const Datetime({super.key});

  @override
  State<Datetime> createState() => _DatetimeState();
}

class _DatetimeState extends State<Datetime> {

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


  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
