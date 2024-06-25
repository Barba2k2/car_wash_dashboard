import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../card_widget.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF2F2F9),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Acesso Administrativo',
            style: GoogleFonts.poppins(
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 34.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Agendamentos',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Filtrar',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF555555),
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 2,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CardWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
