import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  @override
  State<MainRoute> createState() => _MainRouteState();
}
class _MainRouteState extends State<MainRoute> {
  @override
  Widget build(BuildContext context) {
    int _index=0;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text("Kodeeo"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications),)
          ],
        ),
        drawer:Drawer() ,

        bottomNavigationBar:   FloatingNavbar(
          margin: EdgeInsets.only(bottom: 0,top: 0),
          padding: EdgeInsets.only(bottom: 3,top: 3),
          iconSize: 22,
          selectedBackgroundColor: Colors.transparent,
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,

          onTap: (int val) {


            _index=val;


          },
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.golf_course, title: 'Courses'),
            FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
          ],
        )
    );  }
}

