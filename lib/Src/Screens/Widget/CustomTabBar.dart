import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final List<Text> texts;

  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.onTap,
    required this.selectedIndex,
    required this.texts,
  }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  bool iconColor = false;
  int currentindex = 0;
  final List<Tab> tabs = const [
    Tab(
      icon: Icon(Icons.people, color: Colors.green),
      text: 'Home',
    ),
    Tab(
      icon: Icon(Icons.home),
      text: 'Promos',
    ),
    Tab(
      icon: Icon(Icons.home),
      text: 'Orders',
    ),
    Tab(
      icon: Icon(Icons.home),
      text: 'Chat',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs,
      indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.green,
            width: 3
          ),
        ),
      ),
      onTap: (index) {
        currentindex = index;
      },
    );
  }
}