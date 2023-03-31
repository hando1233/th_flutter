import 'package:flutter/material.dart';
import 'package:th_flutter_s7/homepage/components/homeheader.dart';
import 'package:th_flutter_s7/homepage/components/menuheader.dart';
import 'fragments/account_fragment.dart';
import 'fragments/favorite_fragment.dart';
import 'fragments/home_fragment.dart';
import 'fragments/notification_fragment.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool frag = true;

  int selectIndex = 0;

  final screen = <Widget>[
    const HomeDetail(),
    const FavoriteDetail(),
    const NotificationDetail(),
    const AccountDetail()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: frag ? const HomeHeader() : const MenuHeader(),
        titleSpacing: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
            if (selectIndex != 3) {
              frag = true;
            } else {
              frag = false;
            }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Fovorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account')
        ],
      ),
      body: Column(
        children: [
          screen[selectIndex],
        ],
      ),
    );
  }
}
