import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant_colors.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({
    super.key,
    this.isLive = false,
    required this.proPic,
    required this.userName,
  });

  final String proPic;
  final String userName;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:
                          LinearGradient(end: Alignment.bottomRight, colors: [
                        ColorConstants.noramalred,
                        ColorConstants.noramalblue,
                        ColorConstants.noramalyellow
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.cyan),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(proPic),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: isLive == true
                        ? Container(
                            padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 2, color: ColorConstants.primaryWhite),
                              color: ColorConstants.noramalred,
                            ),
                            child: Center(
                              child: Text(
                                "islive",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 20,
                          ))
              ],
            ),
            Text(
              userName,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
