import 'package:flutter/material.dart';
import 'package:test_1/screens/movies.dart';
import 'package:test_1/screens/profile.dart';
import 'package:test_1/screens/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;
  void _setCurrentIndex(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  List<Widget> _totalPage = [MoviesPage(), WishlistPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(104, 113, 111, 112),
      body: SafeArea(child: _totalPage[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _setCurrentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Кино',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Таалагдсан',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профайл',
          ),
        ],
      ),
    );
  }
}
