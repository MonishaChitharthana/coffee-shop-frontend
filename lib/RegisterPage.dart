import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();
  final TextEditingController _controllerThree = TextEditingController();
  final TextEditingController _controllerFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                'assets/images/registerLogin/register.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register Your Account",
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
                Container(
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  margin: EdgeInsets.all(20),
                  child: TextFormField(
                    style: GoogleFonts.poppins(color: Colors.white),
                    controller: _controllerOne,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                  child: TextFormField(
                    style: GoogleFonts.poppins(color: Colors.white),
                    controller: _controllerTwo,
                    decoration: InputDecoration(
                      labelText: 'E-mail Address',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                  child: TextFormField(
                    style: GoogleFonts.poppins(color: Colors.white),
                    controller: _controllerThree,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                  child: TextFormField(
                    style: GoogleFonts.poppins(color: Colors.white),
                    controller: _controllerFour,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {},
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
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.orangeAccent,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "or Register with",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.orangeAccent,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Clicked");
                      },
                      child: Image.asset(
                        'assets/images/registerLogin/facebook.png',
                        fit: BoxFit.cover,
                        height: 20,
                      ),
                    ),
                    Image.asset(
                      'assets/images/registerLogin/google.png',
                      fit: BoxFit.cover,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/registerLogin/twitter.png',
                      fit: BoxFit.cover,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          color: Colors.orange[300],
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
