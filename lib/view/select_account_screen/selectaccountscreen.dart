import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant_colors.dart';
import 'package:instagram_clone/core/constantimages.dart';
import 'package:instagram_clone/global_widgets/global_widgets.dart';
import 'package:instagram_clone/view/login_screen/login_screen.dart';

class Selectaccountscreen extends StatelessWidget {
  const Selectaccountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(ImageConstants.instatext),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/a3/cc/45/a3cc45ba3dbd596a330ca8777fe3fa76.jpg"),
              radius: 45,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "Mahadev Biniraj",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: ColorConstants.primaryBlack),
            )),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                buttonText: "Log in",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                }),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "switch accounts",
                  style: TextStyle(
                      fontSize: 15, color: ColorConstants.primaryBlue),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Don't have an account",
                style: TextStyle(
                    color: ColorConstants.primaryBlack.withOpacity(.4)),
                children: [
                  TextSpan(
                      text: "  Sign Up",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600))
                ]),
          )),
    );
  }
}
