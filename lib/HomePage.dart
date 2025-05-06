import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginPage.dart';
import 'RegisterPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  Timer? autoSwipeTimer;
  String skip = '';

  @override
  void initState() {
    super.initState();
    startAutoSwipe();
  }

  // Start the auto swipe feature
  void startAutoSwipe() {
    autoSwipeTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentIndex < 2) {
        // Move to next page until we reach the 3rd page (index 2)
        int nextPage = currentIndex + 1;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        // Stop the timer when we reach the 3rd page
        autoSwipeTimer?.cancel();
      }
    });
  }

  void skipOption() {
    setState(() {
      if (currentIndex < 2) {
        skip = "Skip";
      } else {
        skip = '';
      }
    });
  }

  // Set the tab when manually tapped
  void setTab(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    autoSwipeTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inactiveLineWidth = 40.0;
    final activeLineWidth = 80.0;
    final inactiveLineColor = Colors.white;
    final activeLineColor = Colors.brown[300];
    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image with Gradient Overlay
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Colors.black87, Colors.black38],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds);
              },
              blendMode: BlendMode.darken,
              child: Image.asset(
                'assets/images/splash/splash.jpg',
                fit: BoxFit.cover,
              ),
            ),
            // Column with Tab Bar and PageView
            Column(
              children: [
                // Line TabBar + Skip
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(3, (index) {
                          final isActive = currentIndex == index;
                          return GestureDetector(
                            onTap: () => setTab(index),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.only(right: 12),
                              height: 2,
                              width: isActive
                                  ? activeLineWidth
                                  : inactiveLineWidth,
                              decoration: BoxDecoration(
                                color: isActive
                                    ? activeLineColor
                                    : inactiveLineColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          );
                        }),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add skip logic
                          print("Skip pressed");
                        },
                        child:
                            Text(skip, style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                // Swipeable PageView
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                      skipOption();
                    },
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Embrace coffee \n essence",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Awaken your senses and soul—embrace \nthe warmth of every brew.",
                              style: GoogleFonts.poppins(
                                color: Colors.brown[100],
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Flavorful bean \njourney",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Savor the rich flavors of every bean \non your coffee journey.",
                              style: GoogleFonts.poppins(
                                color: Colors.brown[100],
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Unlock bean \nsecrets",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Discover the hidden aromas and stories \nwithin every coffee bean.",
                              style: GoogleFonts.poppins(
                                color: Colors.brown[100],
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.all(20),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange[300],
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 4,
                                ),
                                child: Text(
                                  "Register",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.orangeAccent,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 4,
                                ),
                                child: Text(
                                  "Sign in",
                                  style: GoogleFonts.poppins(
                                    color: Colors.orange[300],
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
