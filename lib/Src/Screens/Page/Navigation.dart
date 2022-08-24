import 'package:flutter/material.dart';
import 'Screens.dart';
import 'package:gojek/Src/Screens/Widget/Widgets.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = const [
    Home(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.home,
  ];

  final List<Text> _texts = const [
    Text('Home'),
    Text('Promo'),
    Text('Orders'),
    Text('Chat'),
  ];

  TabBar get _tabBar{
    return const TabBar(
      labelColor: Colors.green,
      unselectedLabelColor: Colors.black,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.green, width: 3),
        ),
      ),
      tabs: [
        Tab(
          icon: ImageIcon(
            AssetImage('Material/beranda.png'),
          ),
          text: 'Home',
        ),
        Tab(
          icon: ImageIcon(
            AssetImage('Material/promo.png'),
          ),
          text: 'Promos',
        ),
        Tab(
          icon: ImageIcon(
            AssetImage('Material/pesanan.png'),
          ),
          text: 'Orders',
        ),
        Tab(
          icon: ImageIcon(
            AssetImage('Material/chat.png'),
          ),
          text: 'Chat',
        )
      ],
    );
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            top: 10
          ),
          child: _tabBar,
        ),
      ),
    );
  }
}
