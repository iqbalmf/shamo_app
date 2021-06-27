import 'package:flutter/material.dart';
import 'package:shamo_app/UI/home/chat_page.dart';
import 'package:shamo_app/UI/home/homepage.dart';
import 'package:shamo_app/UI/home/profile_page.dart';
import 'package:shamo_app/UI/home/wishlist_page.dart';
import 'package:shamo_app/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int currentIndex = 0;

  Widget cartButton() {
    return FloatingActionButton(
      backgroundColor: secondaryColor,
      onPressed: () {
        Navigator.pushNamed(context, '/cart');
      },
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: bgColorNavbar,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/icon_home_inactive.png',
                      width: 21,
                      color: currentIndex == 0 ? primaryColor : colorBtnInactive,
                    ),
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/icon_chat_inactive.png',
                      width: 21,
                      color: currentIndex == 1 ? primaryColor : colorBtnInactive,
                    ),
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/icon_fav_inactive.png',
                      width: 21,
                      color: currentIndex == 2 ? primaryColor : colorBtnInactive,
                    ),
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/icon_profile_inactive.png',
                      width: 21,
                      color: currentIndex == 3 ? primaryColor : colorBtnInactive,
                    ),
                  ))
            ]),
      ),
    );
  }

  Widget body(){
    switch(currentIndex){
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WishListPage();
        break;
      case 3:
        return ProfilPage();
        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
