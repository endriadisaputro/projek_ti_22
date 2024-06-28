import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/kontak_screen.dart';
import 'package:myapp/profil_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    const Center(
      child: Text(
        'Produk',
        style: TextStyle(fontSize: 40),
      ),
    ),
    KontakScreen(),
    ProfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1
                ? Icons.production_quantity_limits
                : Icons.production_quantity_limits_outlined),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2
                ? Icons.contact_page
                : Icons.contact_page_outlined),
            label: 'Kontak',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 3 ? Icons.person : Icons.person_2_outlined),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
