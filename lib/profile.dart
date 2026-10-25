import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/navbar.dart';
import 'package:plants_store/shared/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarS(
        titleText: "My account",
        leadingV: true,
        centerTitle: false,
      ),
      backgroundColor: Color(0xFFF3FFFA),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(6),
              alignment: Alignment.center,
              height: context.ScreenHeight * 0.08,
              width: context.ScreenWidth * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: const Color(0xFFEDF5ED),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: context.ScreenHeight * 0.042,
                    backgroundImage: AssetImage('images/profileS.jpg'),
                  ),
                  SizedBox(width: context.ScreenWidth * 0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sedra Sawan',
                        style: TextStyle(
                          fontSize: context.ScreenHeight * 0.020,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: context.ScreenHeight * 0.004),
                      Text(
                        'Ownest member since Jan 2022',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: context.ScreenHeight * 0.009),
            Text(
              'Manage',
              style: TextStyle(
                fontSize: context.ScreenHeight * 0.022,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.01),
            Card(
              elevation: 0,
              color: const Color(0xFFEDF5ED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.inventory_2_outlined),
                    title: Text('My orders'),
                  ),
                  const ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text('My transaction'),
                  ),
                  const ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.favorite_border),
                    title: Text('My wishlist'),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.016),
            Text(
              'Settings',
              style: TextStyle(
                fontSize: context.ScreenHeight * 0.022,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 0,
              color: const Color(0xFFEDF5ED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.notifications_outlined),
                    title: Text('Notification settings'),
                  ),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.person_outline),
                    title: Text('Account settings'),
                  ),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.feedback_outlined),
                    title: Text('Feedback'),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.024),
            Text(
              'Others',
              style: TextStyle(
                fontSize: context.ScreenHeight * 0.022,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 0,
              color: const Color(0xFFEDF5ED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.info_outline),
                    title: Text('About us'),
                  ),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.help_outline),
                    title: Text('FAQ'),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.01),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: Colors.red,
                size: 22,
              ),
              // title:
              title: Text(
                'Log out',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 30, 15),
                  fontWeight: FontWeight.w900,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("/login");
              },
            ),
            SizedBox(height: context.ScreenHeight * 0.035),
            Center(child: NavBarS(profileV: true)),
          ],
        ),
      ),
    );
  }
}
