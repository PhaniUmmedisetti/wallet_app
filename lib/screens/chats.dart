import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_appp/screens/settings.dart';

import '../widgets/search_bar.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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
              Get.to(() => const Settings());
            }),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Chat',
          style: GoogleFonts.inter(
            // fontStyle: ,
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
                'Actions',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Card(
                      color: const Color(0XFFF1F1F1),
                      child: SizedBox(
                        height: 99,
                        width: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 58.0, top: 15),
                              child: Container(
                                // color: const Color(0XFF2B2B9B),
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0XFF2B2B9B)),
                                child: const Icon(
                                  Icons.headphones,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Ask for help',
                                style: GoogleFonts.inter(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Card(
                      color: const Color(0XFFF1F1F1),
                      child: SizedBox(
                        height: 99,
                        width: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 58.0, top: 15),
                              child: Container(
                                // color: const Color(0XFF2B2B9B),
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0XFF2B2B9B)),
                                child: const Center(
                                  child: Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Send Money',
                                style: GoogleFonts.inter(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Card(
                      color: const Color(0XFFF1F1F1),
                      child: SizedBox(
                        height: 99,
                        width: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 58.0, top: 15),
                              child: Container(
                                // color: const Color(0XFF2B2B9B),
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0XFF2B2B9B)),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'New Dialog',
                                style: GoogleFonts.inter(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Dialogs',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            const ChatList(
              title: 'Supriya',
              subtitle: 'Something is better than nothing',
            ),
            const ChatList(
              title: 'Thanmai',
              subtitle: 'Weather is good',
            ),
            const ChatList(
              title: 'Ranadeep',
              subtitle: 'I want chocolate',
            ),
            const ChatList(
              title: 'Adnan',
              subtitle: 'Lets dance',
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
              ),
              title: Text(
                'Support',
                style: GoogleFonts.inter(
                    color: const Color(0xff2b2b9b),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'Thank you.',
                style: GoogleFonts.inter(color: const Color(0xffB5B5B5)),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:  BottomNavBar(),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
      ),
      title: Text(
        title,
        style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.inter(color: const Color(0xffb5b5b5)),
      ),
      trailing: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0XFF2B2B9B),
        ),
        child: const Center(
          child: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
