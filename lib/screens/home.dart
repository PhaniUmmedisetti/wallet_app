import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_appp/widgets/home_list.dart';
import 'package:wallet_appp/widgets/search_bar.dart';

import '../widgets/credit_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Text(
            "Your wallet",
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 17, right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(18),
              child: SearchBar(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Text(
                'Balance',
                style: GoogleFonts.inter(
                  color: const Color(0XFFB5B5B5),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 20),
              child: Text(
                '24023.65',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                    child: CreditCard(
                      color: Color(0xff2b2b9b),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                    child: CreditCard(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19, right: 19, left: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TRANSACTIONS',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  // const Icon(Icons.more_horiz_outlined)
                  // const Image(
                  //     image: Svg(
                  //   'assets/Frame 8.svg',
                  // ))
                  SvgPicture.asset('assets/filter.svg')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Column(
                children: const [
                  HomeList(
                    title: 'Stream',
                    subTitle: 'Gaming',
                    imageUrl: 'https://picsum.photos/250?image=9',
                  ),
                  HomeList(
                    title: 'Salary',
                    subTitle: 'Money Transfer',
                    imageUrl: 'https://picsum.photos/250?image=9',
                  ),
                  HomeList(
                    title: 'Josh S',
                    subTitle: 'Money Transfer',
                    imageUrl: 'https://picsum.photos/250?image=9',
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
