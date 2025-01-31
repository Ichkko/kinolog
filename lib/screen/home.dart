import 'package:flutter/material.dart';
import 'package:kinolog/screen/movies.dart';
import 'package:kinolog/screen/profile.dart';
import 'package:kinolog/screen/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _totalPage= [MoviesPage(),WishlistPage(),ProfilePage()];
  void _setCurrentIndex(int val){
    setState(() {
      _currentIndex=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_totalPage[_currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _setCurrentIndex,
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: "Кино",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Дуртай",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Профайл",
        ),
      ]),
    );
  }
}
