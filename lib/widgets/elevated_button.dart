import 'package:flutter/material.dart';
import 'package:ufs_task/utls/const.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key,required this.screenSize,required this.text,required this.height,required this.width});

  final Size screenSize;
  final String text;
  final double width;
  final double height;
  

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 54, 64, 203),
                      minimumSize:
                          Size(width, height)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       text,
                        style: const TextStyle(color: whiteColor),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: whiteColor,
                      )
                    ],
                  ),
                );
  }
}