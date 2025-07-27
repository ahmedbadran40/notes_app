import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 24,
                  width: 24,
                  child: const CircularProgressIndicator(color: Colors.black),
                )
              : const Text(
                  'Add Note',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
