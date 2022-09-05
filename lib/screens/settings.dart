import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_appp/screens/home.dart';
import 'package:wallet_appp/widgets/search_bar.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            ),
            color: const Color(0XFFB5B5B5),
            onPressed: () {
              Get.to(() => const HomePage());
              // Get.back();
            }),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Settings',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(18),
              child: SearchBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Main Settings',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFFF1F1F1)),
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                child: const Icon(
                  Icons.notifications_none,
                  color: Color(0xff2B2B9B),
                ),
              ),
              title: Text(
                'Notification',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XFFF1F1F1)),
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: const Icon(
                    Icons.shield_outlined,
                    color: Color(0xff2B2B9B),
                  ),
                ),
                title: Text(
                  'Security',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 35,
                )),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFFF1F1F1)),
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  color: Color(0xff2B2B9B),
                ),
              ),
              title: Text('Privacy',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Theme',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XFFF1F1F1)),
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: SvgPicture.asset('assets/dark_theme.svg')),
              title: Text('Dark Theme',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XFFF1F1F1)),
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: SvgPicture.asset('assets/colors.svg')),
              title: Text('Colors',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XFFF1F1F1)),
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: SvgPicture.asset('assets/background.svg')),
              title: Text('Background',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Others',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              leading: Container(
                  // color: Color(0XFFF1F1F1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XFFF1F1F1)),
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: SvgPicture.asset('assets/about.svg')),
              title: Text('About Us',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
            SettingsList(),
            const Divider(
              color: Color(0XFFF1F1F1),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:  BottomNavBar(),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({
    Key? key,
    //   required this.title,
    //   required this.icon,
  }) : super(key: key);
  // final String title;
  // final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0XFFF1F1F1)),
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: const Icon(
          Icons.privacy_tip_outlined,
          color: Color(0xff2B2B9B),
        ),
      ),
      title: Text('Privacy Policy',
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400)),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        size: 35,
      ),
    );
  }
}
