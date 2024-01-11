import 'package:flutter/material.dart';

import '../components/transfer_card.dart';
import '../components/user_avatar.dart';

import '../components/user_card.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            color: Color(0xFF00B686),
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
                      ),
                    ),
                    const Text(
                      "transfer",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TransferCard(
                        icon: Icons.phone, title: 'Mobile', isActive: true),
                    TransferCard(
                        icon: Icons.qr_code_2_outlined,
                        title: 'QR Code',
                        isActive: false),
                    TransferCard(
                        icon: Icons.card_travel_rounded,
                        title: 'Card',
                        isActive: false),
                    TransferCard(
                        icon: Icons.ev_station,
                        title: 'Utilities',
                        isActive: false),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 190,
            height: MediaQuery.of(context).size.height - 170,
            child: Column(
              children: [
                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Recent',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: const <Widget>[
                            UserAvatar(
                              name: 'Mahmoud',
                              url:
                                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            UserAvatar(
                              name: 'Catherine',
                              url:
                                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            UserAvatar(
                              name: 'Ahmed',
                              url:
                                  'https://images.unsplash.com/photo-1527980965255-d3b416303d12?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            UserAvatar(
                              name: 'Hassan',
                              url:
                                  'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            UserAvatar(
                              name: 'Catherine',
                              url:
                                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            UserAvatar(
                              name: 'Ahmed',
                              url:
                                  'https://images.unsplash.com/photo-1527980965255-d3b416303d12?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            UserAvatar(
                              name: 'Hassan',
                              url:
                                  'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: const <Widget>[
                        Text(
                          "Contacts",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        UserCard(
                          name: 'Mahmoud Abdo',
                          phone: '+123456789',
                          url:
                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                        UserCard(
                          name: 'Catherine',
                          phone: '+123456789',
                          url:
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                        UserCard(
                          name: 'Ahmed Memo',
                          phone: '+123456789',
                          url:
                              'https://images.unsplash.com/photo-1527980965255-d3b416303d12?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                        UserCard(
                          name: 'Hassan Mohamed',
                          phone: '+123456789',
                          url:
                              'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
