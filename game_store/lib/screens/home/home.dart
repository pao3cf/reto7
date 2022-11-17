import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/screens/home/widgets/category.dart';
import 'package:game_store/screens/home/widgets/header.dart';
import 'package:game_store/screens/home/widgets/popular_game.dart';
import 'package:game_store/screens/home/widgets/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const Header(),
                const Search(),
                CategoryJ(),
                PopularGame(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      color: const Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            // backgroundColor: Colors.white,
            selectedItemColor: kPrimary,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            items: [
              BottomNavigationBarItem(
                label: 'Inicio',
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
              ),
              _buildItem('Aplicación', Icons.more_horiz_outlined),
              _buildItem('Ver', Icons.play_arrow_outlined),
              _buildItem('Libro', Icons.auto_stories_rounded),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(String text, IconData icon) {
    return BottomNavigationBarItem(
      label: text,
      icon: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 30,
          color: const Color.fromARGB(255, 24, 3, 71),
        ),
      ),
    );
  }
}
