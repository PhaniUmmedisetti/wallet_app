// import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   int _selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       selectedItemColor: const Color(0xff2b2b9b),
//       selectedIconTheme: const IconThemeData(color: Color(0xff2b2b9b)),
//       unselectedIconTheme: const IconThemeData(color: Color(0xffB5B5B5)),
//       unselectedItemColor: const Color(0xffB5B5B5),
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.pie_chart),
//           label: 'Expenses',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.chat_rounded),
//           label: 'Chats',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.history),
//           label: 'History',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.settings),
//           label: 'Settings',
//         ),
//       ],
//       currentIndex: _selectedIndex,
//       // selectedItemColor: Colors.amber[800],
//       onTap: _onItemTapped,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:wallet_appp/screens/chats.dart';
import 'package:wallet_appp/screens/history_page.dart';
import 'package:wallet_appp/screens/settings.dart';

import '../controllers/bottom_navigation_controller.dart';
import '../screens/expenses.dart';
import '../screens/home.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);
  final homeController = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<Controller>(
        builder: (controller) => Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: homeController.tabIndex,
              children: [
                const HomePage(),
                Expenses(),
                const Chats(),
                const History(),
                const Settings()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: const Color(0xff2b2b9b),
            // selectedIconTheme: ,
            unselectedItemColor: const Color(0xffb5b5b5),
            onTap: homeController.changeTabIndex,
            currentIndex: homeController.tabIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: homeController.tabIndex == 0
                    ? SvgPicture.asset('assets/home_blue.svg')
                    : SvgPicture.asset('assets/home.svg'),
                // color: homeController.tabIndex == 0
                //     ? const Color(0xff2b2b9b)
                //     : const Color(0xffb5b5b5),

                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: homeController.tabIndex == 1
                    ? SvgPicture.asset('assets/pie_blue.svg')
                    : SvgPicture.asset('assets/pie.svg'),
                label: 'Expenses',
              ),
              BottomNavigationBarItem(
                icon: homeController.tabIndex == 2
                    ? SvgPicture.asset('assets/chat_blue.svg')
                    : SvgPicture.asset('assets/chat.svg'),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/history.svg'),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: homeController.tabIndex == 4
                    ? SvgPicture.asset('assets/settings_blue.svg')
                    : SvgPicture.asset('assets/settings.svg'),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
