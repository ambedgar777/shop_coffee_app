import 'package:coffee_app/screens/cart_screen.dart';
import 'package:coffee_app/screens/favourite_screen.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:coffee_app/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersistentTabScreen extends StatefulWidget {
  const PersistentTabScreen({super.key});

  @override
  State<PersistentTabScreen> createState() => _PersistentTabScreenState();
}

class _PersistentTabScreenState extends State<PersistentTabScreen> {
  late PersistentTabController _controller;
  bool isSelected = true;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: Theme.of(context).colorScheme.background,
      controller: _controller,
      tabs: [
        PersistentTabConfig(
          screen: HomeScreen(),
          item: ItemConfig(
            activeColorSecondary: Theme.of(context).colorScheme.onTertiary,
            icon: Image.asset(
              'assets/icons/home.png',
              height: 25,
              width: 25,
              color: isSelected == false
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onTertiary,
            ),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: FavouriteScreen(),
          item: ItemConfig(
            activeColorSecondary: Theme.of(context).colorScheme.onTertiary,
            icon: Image.asset(
              'assets/icons/heart.png',
              height: 25,
              width: 25,
              color: isSelected == false
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onTertiary,
            ),
            title: "Messages",
          ),
        ),
        PersistentTabConfig(
          screen: CartScreen(),
          item: ItemConfig(
            activeColorSecondary: Theme.of(context).colorScheme.onTertiary,
            icon: Image.asset(
              'assets/icons/cart.png',
              height: 25,
              width: 25,
              color: isSelected == false
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onTertiary,
            ),
            title: "Settings",
          ),
        ),
        PersistentTabConfig(
          screen: NotificationScreen(),
          item: ItemConfig(
            activeColorSecondary: Theme.of(context).colorScheme.onTertiary,
            icon: Image.asset(
              'assets/icons/notification.png',
              height: 25,
              width: 25,
              color: isSelected == false
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onTertiary,
            ),
            title: "Settings",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style5BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
      ),
    );
  }
}
