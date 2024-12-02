import 'package:devfest/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/Success.png'),
                const SizedBox(height: 16),
                const Text(
                  'تم الحجز بنجاح!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'شكراً لاستخدامك برنامج احلقلي',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 16),
                PrimaryButton(
                  onClicked: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
