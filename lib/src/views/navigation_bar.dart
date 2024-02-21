import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/views/Main_pages/Cart_screen.dart';
import 'package:fast_shop/src/views/Main_pages/My_Account_screen.dart';
import 'package:fast_shop/src/views/Main_pages/Wishlist_screen.dart';
import 'package:fast_shop/src/views/Main_pages/categories_screen.dart';
import 'package:fast_shop/src/views/Main_pages/welcome_screen.dart';
import 'package:flutter/material.dart';
class NavigationScreen extends StatefulWidget {
  late int tabIndex;
  NavigationScreen({super.key, this.tabIndex = 2});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // int tabIndex = widget.tbIndex;
  void changeTabIndex(int index)
  {
    setState(() {
      widget.tabIndex = index;      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: widget.tabIndex,
          children: const [
            WeclomeHomeScreen(),
            CategoriesScreen(),
            WishListScreen(),
            CartScreen(),
            MyAccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 57,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: changeTabIndex,
          iconSize: 15.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          currentIndex: widget.tabIndex,
          items: [
            _bottomNavigationBarItem(
              icon: house,
              label: "",
            ),
            _bottomNavigationBarItem(
              icon: twotoneelement,
              label: "",
            ),
            _bottomNavigationBarItem(
              icon: twotoneheart,
              label: "",
            ),
            _bottomNavigationBarItem(
              icon: navcart,
              label: "",
            ),
            _bottomNavigationBarItem(
              icon: navuser,
              label: "",
            )
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, scale:1.7, height: 26, color: Colors.black54, ),
      activeIcon: Image.asset(icon, scale:1.3, height: 27, color: kPrimaryColor),
      label: label,
    );
  }
}
