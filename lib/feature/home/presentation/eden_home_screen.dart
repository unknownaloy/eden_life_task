import 'package:eden_life_task/feature/home/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class EdenHomeScreen extends StatefulWidget {
  const EdenHomeScreen({super.key});

  @override
  State<EdenHomeScreen> createState() => _EdenHomeScreenState();
}

class _EdenHomeScreenState extends State<EdenHomeScreen> {
  late final PageController _pageController;

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Container(
      color: Colors.purple,
    ),
    const ProfileScreen(),
  ];

  void _handlePageTap(int index) {
    setState(() => _selectedIndex = index);
    _pageController.jumpToPage(index);
  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => _handlePageTap(index),
        items: [
          BottomNavigationBarItem(
            icon: Semantics(
              label: "An icon for navigating to the order screen",
              enabled: _selectedIndex == 0,
              child: const Icon(Icons.shopping_cart),
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Semantics(
              label: "An icon for navigating to profile screen",
              enabled: _selectedIndex == 1,
              child: const Icon(Icons.person),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
