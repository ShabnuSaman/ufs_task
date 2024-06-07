import 'package:flutter/material.dart';
import 'package:ufs_task/controller/bottom_nav/widgets/bottom_nav_widgets.dart';
import 'package:ufs_task/view/home/home.dart';
import 'package:ufs_task/view/mentors/mentor.dart';
import 'package:ufs_task/view/my_course/my_course.dart';
import 'package:ufs_task/view/profile/profile.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final pages = [
    const HomePage(),
    const MyCoursePage(),
    const MentorPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: appBottomChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          }),
          bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
