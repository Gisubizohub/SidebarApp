import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sidenav/calculator_screen.dart';

import 'NavBar.dart';
import 'zumba.dart'; // Import your HomeScreen file

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Color.fromARGB(255, 54, 9, 216),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: NavBar(),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 93, 8, 230),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 74, 9, 194),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 10, 65, 214),
            gap: 8,
            onTabChange: (index) {
              // Use Navigator to push the HomeScreen when the "Home" tab is pressed
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorScreen()),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              }
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.calculate,
                text: "Calculator",
              ),
              GButton(
                icon: Icons.info,
                text: "About",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
