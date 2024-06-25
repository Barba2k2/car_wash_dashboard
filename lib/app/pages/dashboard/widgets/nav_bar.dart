import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/logo/logo.png',
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0.75),
          ),
          //$ Dashboard
          ListTile(
            leading: const Icon(
              Icons.dashboard_customize_rounded,
              size: 34,
              color: Color(0XFF555555),
            ),
            title: Text(
              'Dashboard',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF555555),
              ),
            ),
            mouseCursor: SystemMouseCursors.basic,
          ),
          //$ New Bookings
          ListTile(
            leading: const Icon(
              Icons.fiber_new_rounded,
              size: 34,
              color: Color(0XFF555555),
            ),
            title: Text(
              'Novos Agendamentos',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF555555),
              ),
            ),
            onTap: () {},
          ),
          //$ Aceitos
          ListTile(
            leading: const Icon(
              Icons.check_circle_outline_outlined,
              size: 34,
              color: Color(0XFF555555),
            ),
            title: Text(
              'Agen. aceitos',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF555555),
              ),
            ),
            onTap: () {},
          ),
          //$ Reagendamentos
          ListTile(
            leading: const Icon(
              Icons.sync_rounded,
              size: 34,
              color: Color(0XFF555555),
            ),
            title: Text(
              'Agen. Reagendados',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF555555),
              ),
            ),
            onTap: () {},
          ),
          //$ Users
          ListTile(
            leading: const Icon(
              Icons.person_outline_outlined,
              size: 34,
              color: Color(0XFF555555),
            ),
            title: Text(
              'Usuários',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF555555),
              ),
            ),
            onTap: () {},
          ),
          //$ Settings
          ListTile(
            leading: const Icon(
              Icons.display_settings_rounded,
              size: 34,
              color: Color(0XFF555555),
            ),
            title: Text(
              'Configurações',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF555555),
              ),
            ),
            onTap: () {},
          ),
          const Spacer(),
          //$ Logout
          Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white.withOpacity(0.75),
                    child: Image.asset('assets/images/homer.png'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Homer Simpson',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0XFF555555),
                        ),
                      ),
                      Text(
                        'Administrador',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF555555),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.black.withOpacity(0.75),
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  size: 34,
                  color: Color(0XFF333333),
                ),
                title: Text(
                  'Sair',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF555555),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
