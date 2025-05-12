import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({super.key});

  @override
  State<FirstHomePage> createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  final List<Map<String, String>> coffeeItems = [
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Blazing Brew',
      'price': '\$2.50',
      'desc': 'Strong and rich in flavor.'
    },
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Espresso',
      'price': '\$3.50',
      'desc': 'Smooth blend with steamed milk.'
    },
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Mocha',
      'price': '\$4.00',
      'desc': 'Frothy milk and strong espresso.'
    },
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Inferno Roast',
      'price': '\$4.50',
      'desc': 'Chocolate flavored coffee delight.'
    },
  ];

  final List<Map<String, String>> iceTeaItems = [
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Lemon Iced Tea',
      'price': '\$3.00',
      'desc': 'A refreshing, tangy lemon iced tea.'
    },
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Peach Iced Tea',
      'price': '\$3.50',
      'desc': 'Sweet and fruity peach iced tea.'
    },
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Mint Iced Tea',
      'price': '\$3.00',
      'desc': 'A minty cool iced tea perfect for summer.'
    },
    {
      'image': 'assets/images/homePage/coffee.png',
      'title': 'Strawberry Tea',
      'price': '\$4.00',
      'desc': 'Refreshing iced tea with a strawberry twist.'
    },
  ];

  // Selected category to filter grid items
  String selectedCategory = "Hot Coffee";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Icon Bar
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage(
                    'assets/images/homePage/profile.jpg',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ana",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Good Morning !",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            // Discount Container
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFCE9760),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get 20% Discount \nOn your first Order!",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Start your coffee journey with 20% off your first order—exclusive on our app!",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Image.asset('assets/images/homePage/coffee.png'),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Scroll Text
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Hot Coffee";
                      });
                    },
                    child: Text(
                      "Hot Coffee",
                      style: GoogleFonts.poppins(
                        color: selectedCategory == "Hot Coffee"
                            ? Colors.orange
                            : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Ice Teas button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Ice Teas";
                      });
                    },
                    child: Text(
                      "Ice Teas",
                      style: GoogleFonts.poppins(
                        color: selectedCategory == "Ice Teas"
                            ? Colors.orange
                            : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Hot Teas button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Hot Teas";
                      });
                    },
                    child: Text(
                      "Hot Teas",
                      style: GoogleFonts.poppins(
                        color: selectedCategory == "Hot Teas"
                            ? Colors.orange
                            : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Drinks button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Drinks";
                      });
                    },
                    child: Text(
                      "Drinks",
                      style: GoogleFonts.poppins(
                        color: selectedCategory == "Drinks"
                            ? Colors.orange
                            : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Bakery button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Bakery";
                      });
                    },
                    child: Text(
                      "Bakery",
                      style: GoogleFonts.poppins(
                        color: selectedCategory == "Bakery"
                            ? Colors.orange
                            : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: selectedCategory == "Hot Coffee"
                  ? GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1.0,
                      children: List.generate(coffeeItems.length, (index) {
                        final item = coffeeItems[index];
                        return Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFCE9760),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  item['image']!,
                                ),
                              ),
                              SizedBox(height: 10),
                              // Item title and cost
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item['title']!,
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    item['price']!,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              // Description
                              Text(
                                item['desc']!,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    )
                  : selectedCategory == "Ice Teas"
                      ? GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          //childAspectRatio: 1.0,
                          children: List.generate(iceTeaItems.length, (index) {
                            final item = iceTeaItems[index];
                            return Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFCE9760),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      item['image']!,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  // Item title and cost
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        item['title']!,
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        item['price']!,
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  // Description
                                  Text(
                                    item['desc']!,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        )
                      : Center(
                          child: Text(
                            "Select a Category to see items!",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
