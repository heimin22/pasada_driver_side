import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Floating search bar
            Positioned(
              top: screenHeight * 0.02, // 2% from the top of the screen
              left: screenWidth * 0.05, // 5% padding from the left
              right: screenWidth * 0.05, // 5% padding from the right
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  height:
                      screenHeight * 0.06, // Adjust height based on screen size
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16), // Left padding
                      const Icon(Icons.search, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              _searchText =
                                  value; // Update state with search input
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Search for routes',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16), // Right padding
                    ],
                  ),
                ),
              ),
            ),

            // Displaying search input for testing purposes
            Positioned(
              top: screenHeight * 0.12,
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              child: Text(
                _searchText.isNotEmpty ? 'You searched for: $_searchText' : '',
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),

      // // Bottom Navigation Bar
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: 'Home',
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Activity',
      //       icon: Icon(Icons.local_activity),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Profile',
      //       icon: Icon(Icons.person),
      //     ),
      //   ],
      // ),
    );
  }
}
