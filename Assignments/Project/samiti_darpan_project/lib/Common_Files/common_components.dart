import "package:flutter/material.dart";

class CommonComponents {
  static AppBar giveAppBar(
      {required String? title, required BuildContext? context}) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context!).pop();
        },
        child: const Icon(
          Icons.navigate_before_rounded,
          size: 40,
          color: Colors.black,
        ),
      ),
      title: Text(
        title!,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 169, 211, 248),
      centerTitle: true,
    );
  }

  static Widget giveBottomNavigationBar() {
    return BottomNavigationBar(
      iconSize: 30,
      fixedColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          //backgroundColor: Color.fromRGBO(0, 75, 142, 1),
          backgroundColor: Colors.cyan,
          label: "home",
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "Darpan",
          icon: SizedBox(
            height: 30,
            width: 30,
            // child: Image.asset("assets/png/newspapers.png"),
            child: Icon(
              Icons.article_outlined,
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          label: "Suchna",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
          label: "Avlokan",
        ),
      ],
    );
  }
}
