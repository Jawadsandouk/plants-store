import 'package:flutter/material.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/textfind.dart';
import 'package:plants_store/shared/sizes.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25.0),
        color: Color(0xffF3FFFA),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: context.ScreenHeight * 0.06),
            Text(
              "Sign up",
              style: TextStyle(
                fontSize: context.ScreenHeight * 0.050,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 5, 31, 12),
              ),
            ),
            SizedBox(height: 3),
            Text(
              "sign up to connect ",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 3, 75, 43),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.010),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  child: Image.asset(
                    "images/5.png",
                    width: context.ScreenWidth * 0.45,
                    height: context.ScreenHeight * 0.1,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            TexTFind(
              txt: "Full name",
              ico: Icon(Icons.person_3_outlined),
              tex: '',
              ic: Icon(null),
            ),
            SizedBox(height: context.ScreenHeight * 0.02),
            TexTFind(
              txt: "Email",
              ico: Icon(Icons.email_outlined),
              tex: '',
              ic: Icon(null),
            ),
            SizedBox(height: context.ScreenHeight * 0.02),
            TexTFind(
              txt: "Password",
              ico: Icon(Icons.lock_outline),
              tex: 'password',
              ic: Icon(Icons.visibility_off_outlined),
            ),
            SizedBox(height: context.ScreenHeight * 0.02),
            TexTFind(
              txt: "Confirm Password",
              ico: Icon(Icons.lock_outline),
              tex: 'password',
              ic: Icon(Icons.visibility_off_outlined),
            ),
            SizedBox(height: context.ScreenHeight * 0.05),
            Batten1(
              txt: "Sign up",
              tx: Color.fromARGB(232, 255, 255, 255),
              wh: EdgeInsets.symmetric(
                horizontal: context.ScreenHeight * 0.1,
                vertical: context.ScreenHeight * 0.007,
              ),
              clr: Color(0xE9034B2B),
              S: "/login",
              borderRadius: BorderRadius.circular(45),
              fontSize: 0.024,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(height: context.ScreenHeight * 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.ScreenHeight * 0.03,
                  width: context.ScreenWidth * 0.08,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Switch(
                      activeThumbColor: Color.fromARGB(41, 105, 240, 175),
                      value: selected,
                      focusColor: Color.fromARGB(21, 0, 108, 27),
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                        // Handle switch state change
                      },
                    ),
                  ),
                ),
                SizedBox(width: context.ScreenWidth * 0.02),
                Text(
                  'Remember me',
                  style: TextStyle(
                    color: Color.fromARGB(255, 9, 9, 9),
                    fontSize: context.ScreenHeight * 0.017,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
