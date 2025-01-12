import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const Sidebar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.dashboard, 'label': 'Dashboard'},
      {'icon': Icons.settings_suggest, 'label': 'Technical'},
      {'icon': Icons.fitness_center, 'label': 'Physical'},
      {'icon': Icons.psychology, 'label': 'Psychology'},
      {'icon': Icons.help, 'label': 'Help'},
      {'icon': Icons.settings, 'label': 'Setting'},
      {'icon': Icons.logout, 'label': 'Logout'},
    ];

    return Container(
      width: 90.w, // Adjust width for responsiveness
      color: const Color(0xFF1C1C1E),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Top Section
          Column(
            children: [
              SizedBox(height: 20.h),
              Image.asset(
                'assets/logo.png', // Replace with your logo asset
                height: 60.h, // Responsive logo height
              ),
              SizedBox(height: 20.h),
              // Menu Items
              ...items.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;

                return GestureDetector(
                  onTap: () => onItemSelected(index),
                  child: Container(
                    color: selectedIndex == index
                        ? const Color(0xFFD89000)
                        : Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Icon(
                      item['icon'] as IconData,
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.white54,
                      size: 28.sp, // Responsive icon size
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
          // Logout Button
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: IconButton(
              onPressed: () => onItemSelected(items.length - 1),
              icon: Icon(Icons.logout, color: Colors.white, size: 28.sp),
            ),
          ),
        ],
      ),
    );
  }
}
