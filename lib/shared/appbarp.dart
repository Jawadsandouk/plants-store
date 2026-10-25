import 'package:flutter/material.dart';
import 'package:plants_store/shared/search.dart';
import 'package:plants_store/shared/sizes.dart';

class AppBarS extends StatelessWidget implements PreferredSizeWidget {
  final bool leadingV;
  final String? titleText;
  final bool centerTitle;
  final IconData? icon;
  final bool searchV;
  final bool nameV;

  final Widget? leadingWidget;
  final Widget? titleWidget;

  const AppBarS({
    super.key,
    this.leadingV = true,
    this.titleText,
    this.centerTitle = true,
    this.icon,
    this.searchV = false,
    this.leadingWidget,
    this.titleWidget,
    this.nameV = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(70.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 7, right: 16, bottom: 7),
      child: AppBar(
        backgroundColor: Color.fromARGB(0, 243, 255, 250),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: leadingV
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  size: context.ScreenWidth * 0.1,
                ),
              )
            : CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/profileS.jpg'),
              ),
        title: searchV
            ? SearchS(showCloseIcon: true)
            : (titleText?.isNotEmpty ?? false)
            ? Text(
                titleText ?? "",
                style: TextStyle(
                  fontSize: context.ScreenWidth * 0.058,
                  fontWeight: FontWeight.w400,
                ),
              )
            : Visibility(
                visible: nameV,
                child: SizedBox(
                  height: context.ScreenHeight * 0.08,
                  width: context.ScreenWidth * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sedra Sawan ',
                        style: TextStyle(
                          fontSize: context.ScreenHeight * 0.022,
                          color: Color(0xFF1B4332),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'hello sweety',
                        style: TextStyle(
                          fontSize: context.ScreenHeight * 0.018,
                          color: Color.fromARGB(111, 27, 67, 50),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        centerTitle: centerTitle,
        actions: [
          Visibility(
            visible: icon != null,
            child: IconButton(
              onPressed: () {},
              icon: Icon(icon, size: context.ScreenWidth * 0.08),
            ),
          ),
        ],
      ),
    );
  }
}
