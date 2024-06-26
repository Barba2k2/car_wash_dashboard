import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final ValueNotifier<int> selectedIndexNotifier;

  const NavBar({
    super.key,
    required this.selectedIndexNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 360,
      backgroundColor: Colors.white,
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
          _buildListTile(
            context: context,
            icon: Icons.fiber_new_rounded,
            title: 'Novos Agendamentos',
            enableNotifications: true,
            index: 0,
            onTap: () {
              Navigator.of(context).pushNamed('/dashboard/home');
            },
          ),
          //$ Aceitos
          _buildListTile(
            context: context,
            icon: Icons.check_circle_outline_outlined,
            title: 'Agen. aceitos',
            index: 1,
            onTap: () {},
          ),
          //$ Reagendamentos
          _buildListTile(
            context: context,
            icon: Icons.sync_rounded,
            title: 'Agen. Reagendados',
            index: 2,
            onTap: () {},
          ),
          //$ Users
          _buildListTile(
            context: context,
            icon: Icons.person_outline_outlined,
            title: 'Usuários',
            index: 3,
            onTap: () {},
          ),
          //$ Settings
          _buildListTile(
            context: context,
            icon: Icons.display_settings_rounded,
            title: 'Configurações',
            index: 4,
            onTap: () {},
          ),
          const Spacer(),
          //$ Logout
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white.withOpacity(0.75),
                      backgroundImage: const AssetImage(
                        'assets/images/homer.png',
                      ),
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
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black.withOpacity(0.75),
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildListTile(
                  context: context,
                  icon: CupertinoIcons.square_arrow_left,
                  title: 'Sair',
                  onTap: () {
                    Navigator.of(context).popAndPushNamed('/auth/login');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _buildListTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    int? index,
    required VoidCallback onTap,
    bool enableNotifications = false,
  }) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, child) {
        return ListTile(
          leading: Icon(
            icon,
            size: 34,
            color: const Color(0XFF555555),
          ),
          title: enableNotifications
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF555555),
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: Text(
                          '2',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF555555),
                  ),
                ),
          tileColor:
              selectedIndex == index ? Colors.black.withOpacity(0.15) : null,
          onTap: () {
            selectedIndexNotifier.value = index!;
            onTap;
          },
        );
      },
    );
  }
}
