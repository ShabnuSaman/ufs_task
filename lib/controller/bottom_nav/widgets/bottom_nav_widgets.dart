import 'package:flutter/material.dart';

ValueNotifier<int> appBottomChangeNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: appBottomChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              currentIndex: newIndex,
              onTap: (index) {
                appBottomChangeNotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color.fromARGB(255, 21, 45, 181),
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: "My Course"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_sharp), label: "Mentor"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]);
        });
  }
}
