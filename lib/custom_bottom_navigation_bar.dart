import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_5/screens/realhome.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      if (index == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RealHome()),
        );
      } else if (index == 3) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      }
    }

    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      animationCurve: Curves.easeIn,
      animationDuration: Duration(milliseconds: 0),
      index: widget.currentIndex,
      onTap: widget.onTap,
      items: [
        Icon(
          Icons.home,
          color: widget.currentIndex == 0 ? Colors.blue : Colors.grey,
        ),
        Icon(
          Icons.search,
          color: widget.currentIndex == 1 ? Colors.blue : Colors.grey,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 239, 113, 101)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Icon(
            Icons.file_download_outlined,
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.person,
          color: widget.currentIndex == 3 ? Colors.blue : Colors.grey,
        ),
        Icon(
          Icons.favorite_border_outlined,
          color: widget.currentIndex == 4 ? Colors.blue : Colors.grey,
        ),
      ],
    );
  }
}
