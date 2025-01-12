import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final VoidCallback? onSearchButtonPressed;

  const SearchBar({
    Key? key,
    this.hintText = 'Search...',
    required this.onChanged,
    this.onSearchButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h, // Responsive height
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(8.r), // Responsive border radius
      ),
      child: Row(
        children: [
          SizedBox(width: 8.w), // Responsive spacing
          Icon(Icons.search, color: Colors.white54, size: 24.sp),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              style: TextStyle(color: Colors.white, fontSize: 16.sp), // Responsive font size
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white54, fontSize: 16.sp),
                border: InputBorder.none,
              ),
            ),
          ),
          if (onSearchButtonPressed != null)
            IconButton(
              onPressed: onSearchButtonPressed,
              icon: Icon(Icons.search, color: Colors.white, size: 24.sp),
            ),
        ],
      ),
    );
  }
}
