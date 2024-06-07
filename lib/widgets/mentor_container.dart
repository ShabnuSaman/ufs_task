import 'package:flutter/material.dart';
import 'package:ufs_task/utls/const.dart';

class MentorContainerWidget extends StatelessWidget {
  const MentorContainerWidget({super.key,required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
     return Container(
                  height: screenSize.height / 5,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://thumbs.dreamstime.com/b/two-people-studying-library-students-sitting-desk-talking-30881557.jpg",
                          ),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.6),
                            Colors.white.withOpacity(0.2)
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Find a Mentor",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "AnyWhere , Anytime!",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          kheight10,
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 54, 64, 203),
                            ),
                            child: const Text(
                              "Connect Now",
                              style: TextStyle(color: whiteColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }
}