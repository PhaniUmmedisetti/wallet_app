import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key, required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      // back
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: 280,
        height: 180,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 90, 0),
              child: Text(
                'Rocketbank',
                style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(26, 0, 0, 0),
                  child: Text(
                    '.... .... .... ',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Text(
                    '4489',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(26, 20, 0, 0),
                  child: Text(
                    '04/12 ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 25, 0, 0),
                  child: Card(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const SizedBox(
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Card(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const SizedBox(
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
