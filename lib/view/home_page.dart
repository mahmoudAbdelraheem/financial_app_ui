import 'package:financial_app_ui/components/floating_card.dart';
import 'package:flutter/material.dart';

import '../components/build_card.dart';
import '../components/categories_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  GestureDetector bottomNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: const Border(
                  bottom: BorderSide(
                    width: 4,
                    color: Color(0xFF00B686),
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF00B686).withOpacity(0.3),
                    const Color(0xFF00B686).withOpacity(0.026),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              )
            : const BoxDecoration(),
        child: Icon(icon,
            color: index == _selectedIndex
                ? const Color(0xFF00B686)
                : Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: <Widget>[
          bottomNavItem(Icons.camera_alt_rounded, 0),
          bottomNavItem(Icons.card_membership, 1),
          bottomNavItem(Icons.home_rounded, 2),
          bottomNavItem(Icons.pie_chart_rounded, 3),
          bottomNavItem(Icons.person_2_rounded, 4),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF00B686), Color(0xFF00838F)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              )),
                          const Text(
                            'Available balance',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0xFF00B686),
                              border:
                                  Border.all(width: 1.5, color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 8,
                                ),
                              ],
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://t3.ftcdn.net/jpg/01/97/11/64/240_F_197116416_hpfTtXSoJMvMqU99n6hGP4xX0ejYa4M7.jpg"),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Christopher Summers',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.wallet,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text.rich(
                                    TextSpan(
                                      text: "\$5320",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ".50",
                                          style:
                                              TextStyle(color: Colors.white38),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.shade100,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 65),
                    children: [
                      Text(
                        "Activity",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          BuildCard(
                            icon: Icons.card_travel_outlined,
                            title: 'My Card',
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            iconColor: const Color(0xFF01579B),
                          ),
                          BuildCard(
                            icon: Icons.telegram,
                            title: 'Transfer',
                            backgroundColor: Colors.cyanAccent.withOpacity(0.2),
                            iconColor: const Color(0xFF01579B),
                          ),
                          BuildCard(
                            icon: Icons.card_travel_outlined,
                            title: 'Statistics',
                            backgroundColor:
                                const Color(0xFFD7CCC8).withOpacity(0.4),
                            iconColor: const Color(0xFF9499B7),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CategoriesCard(
                        icon: Icons.fastfood_rounded,
                        title: 'Food',
                        price: 120,
                        discount: 20,
                      ),
                      const CategoriesCard(
                        icon: Icons.flash_on,
                        title: 'Utilities',
                        price: 430,
                        discount: 17,
                      ),
                      const CategoriesCard(
                        icon: Icons.fastfood_rounded,
                        title: 'Food',
                        price: 120,
                        discount: 20,
                      ),
                      const CategoriesCard(
                        icon: Icons.flash_on,
                        title: 'Utilities',
                        price: 430,
                        discount: 17,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const FloatingCard(),
        ],
      ),
    );
  }
}
