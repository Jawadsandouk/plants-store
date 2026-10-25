import 'package:flutter/material.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/textfind.dart';
import 'package:plants_store/shared/sizes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(9.0),
        color: Color(0xffF3FFFA),
        child: Column(
          children: [
            SizedBox(height: context.ScreenHeight * 0.075),
            Text(
              "Nice to have you again!",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: context.ScreenHeight * 0.027,
                color: Color.fromARGB(255, 10, 52, 21),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.012),
            Text(
              "Login to your account",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: context.ScreenHeight * 0.025,
                color: Color.fromARGB(255, 6, 50, 8),
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
              txt: "Password",
              ico: Icon(Icons.lock_outline),
              tex: 'password',
              ic: Icon(Icons.visibility_off_outlined),
            ),
            Center(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password ?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 35, 11),
                      fontSize: context.ScreenHeight * 0.018,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.15),
            Batten1(
              txt: "Confirm",
              tx: Color.fromARGB(232, 255, 255, 255),
              wh: EdgeInsets.symmetric(
                horizontal: context.ScreenHeight * 0.11,
                vertical: context.ScreenHeight * 0.009,
              ),
              clr: Color(0xE9034B2B),
              S: "/favorits",
              fontWeight: FontWeight.w900,
              borderRadius: BorderRadius.circular(45),
              fontSize: 0.024,
            ),
            SizedBox(height: context.ScreenHeight * 0.016),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: context.ScreenHeight * 0.005),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xE9034B2B),
                        fontSize: context.ScreenHeight * 0.020,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
