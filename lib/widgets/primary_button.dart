import 'package:flutter/material.dart';

import '../constant/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key,required this.name, required this.onClicked});

  final String name;
  final Function() onClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: onClicked,
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
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16, // Font size
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}