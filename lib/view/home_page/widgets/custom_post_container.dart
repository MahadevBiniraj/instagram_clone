import 'package:flutter/material.dart';

class Custompost extends StatelessWidget {
  const Custompost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Mahadevbiniraj",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Text("tokyo,japan"),
              ],
            ),
            Spacer(),
            Icon(Icons.more_horiz_outlined)
          ],
        )
      ],
    );
  }
}
