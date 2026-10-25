import 'package:flutter/material.dart';
import 'package:plants_store/shared/Sizes.dart';

class SearchS extends StatefulWidget {
  final bool showCloseIcon;

  const SearchS({super.key, this.showCloseIcon = false});

  @override
  State<SearchS> createState() => _SearchSState();
}

class _SearchSState extends State<SearchS> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController searchController = TextEditingController(
    text: "Indoor",
  );

  @override
  void initState() {
    super.initState();

    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.ScreenWidth * 1,
      height: context.ScreenHeight * 0.058,
      child: TextField(
        controller: searchController,
        focusNode: focusNode,
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        decoration: InputDecoration(
          fillColor: focusNode.hasFocus ? Color(0xFFF5F5F5) : Color(0xFFE3EEEA),
          filled: true,
          contentPadding: EdgeInsets.all(10),
          hintText: "Search for plants...",
          hintStyle: TextStyle(fontSize: context.ScreenWidth * 0.045),
          border: InputBorder.none,
          prefixIcon: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/indoor");
            },
            icon: Icon(
              Icons.search,
              size: context.ScreenWidth * 0.08,
              color: Color(0xFF494848),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0x00000000), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0x6C000000), width: 1),
          ),
          suffixIcon: widget.showCloseIcon
              ? IconButton(
                  onPressed: () {
                    searchController.clear();
                  },
                  icon: Icon(Icons.close, color: Color(0xFF4B4949)),
                )
              : null,
        ),
      ),
    );
  }
}
