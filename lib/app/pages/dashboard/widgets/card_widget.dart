import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lavagem completa',
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person_rounded,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        'João Maria da Silva',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.car_repair_rounded,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Fiat Uno Mille',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Cheiro forte vindo do porta-malas',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.inter(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.clock,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '15 de maio às 10h',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  'R\$ 120,00',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
