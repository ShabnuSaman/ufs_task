import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ufs_task/utls/const.dart';
import 'package:ufs_task/widgets/elevated_button.dart';
import 'package:ufs_task/widgets/mentor_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(screenSize: screenSize),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(text: "Recently Viewed", color: blackColor),
                  RecentlyViewedContainerWidget(screenSize: screenSize),
                  kheight10,
                  ElevatedButtonWidget(
                      screenSize: screenSize,
                      text: "Explore Courses",
                      height: screenSize.height / 17,
                      width: screenSize.width),
                  kheight10,
                  MentorContainerWidget(screenSize: screenSize),
                  kheight15,
                  const TextWidget(
                      text: "Mock Text",
                      color: Color.fromARGB(255, 115, 113, 113)),
                  kheight10,
                  Row(
                    children: [
                      ContainerMockItems(
                        screenSize: screenSize,
                        text: "Reading",
                        icon: Icons.book_online_outlined,
                      ),
                      kWidght20,
                      ContainerMockItems(
                        screenSize: screenSize,
                        text: "Reading",
                        icon: Icons.book_online_outlined,
                      ),
                    ],
                  ),
                  kheight10,
                  Row(
                    children: [
                      ContainerMockItems(
                        screenSize: screenSize,
                        text: "Reading",
                        icon: Icons.book_online_outlined,
                      ),
                      kWidght20,
                      ContainerMockItems(
                        screenSize: screenSize,
                        text: "Reading",
                        icon: Icons.book_online_outlined,
                      ),
                    ],
                  ),
                  kheight10,
                  const Text(
                    "Recommended Course",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 115, 113, 113)),
                  ),
                  //  RecommendedContainerwidget(screenSize: screenSize),
                  SizedBox(
                    height: screenSize.height/2.7,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                       return kWidght15;
                      },
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                      return RecommendedContainerwidget(screenSize: screenSize);
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerMockItems extends StatelessWidget {
  const ContainerMockItems(
      {super.key,
      required this.screenSize,
      required this.text,
      required this.icon});

  final Size screenSize;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width / 2.5,
      height: screenSize.height / 18,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Container(
              width: screenSize.width / 6,
              height: screenSize.height / 18.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: Center(
                child: Icon(icon),
              ),
            ),
            kWidght15,
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

class RecentlyViewedContainerWidget extends StatelessWidget {
  const RecentlyViewedContainerWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height / 7.5,
      width: screenSize.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: blackColor, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Container(
              width: screenSize.width / 3.7,
              height: screenSize.height / 6.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: NetworkImage(
                        "https://www.shutterstock.com/shutterstock/videos/1060345952/thumb/5.jpg?ip=x480",
                      ),
                      fit: BoxFit.cover)),
            ),
            kWidght15,
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OET Beginner Special Classes\nand Prepration Tips",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                kheight10,
                Text("20:40/35:12")
              ],
            ),
            const Image(image: AssetImage("assets/images/Frame 1000004927.png"))
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 20, color: color, fontWeight: FontWeight.bold),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height / 3.2,
      width: screenSize.width,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://thumbs.dreamstime.com/b/two-people-studying-library-students-sitting-desk-talking-30881557.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.7),
                Colors.blue.withOpacity(0.3)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            right: 10,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww"),
                  radius: 40,
                ),
                kWidght15,
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Ajay",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tuesday,23 April 2024",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                kWidght20,
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.search,
                        color: whiteColor,
                      ),
                      Icon(
                        Icons.notifications,
                        color: whiteColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 130,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image 30.png")),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello , I'm Breff",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Ask all your career & exams \nDoubt to me",
                        style: TextStyle(color: whiteColor, fontSize: 16),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class RecommendedContainerwidget extends StatelessWidget {
  const RecommendedContainerwidget({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height / 2.7,
      width: screenSize.width / 1.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: screenSize.height / 5,
              width: screenSize.width / 1.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/image 46.png",
                      ),
                      fit: BoxFit.cover)),
            ),
            kheight10,
            const Text(
              "OET Beginner Special\nClasses and Prepration Tips",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            kheight10,
            const Row(
              children: [
                Icon(Icons.label),
                kWidght15,
                Text("54"),
                Spacer(),
                Icon(Icons.punch_clock),
                kWidght15,
                Text("48 Hrs")
              ],
            ),
            kheight15,
            const Row(
              children: [
                Text("\u{20B9}${5000}"),
                Spacer(),
                Icon(Icons.star),
                Text("4.6\5")
              ],
            )
          ],
        ),
      ),
    );
  }
}
