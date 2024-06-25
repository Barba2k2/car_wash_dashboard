import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/core/helpers/route_not_found.dart';
import 'app/core/ui/ui_config.dart';
import 'app/pages/auth/login/login_page.dart';
import 'app/pages/auth/register/register_page.dart';
import 'app/pages/dashboard/home.dart';
// import 'app/pages/auth/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          title: UiConfig.title,
          debugShowCheckedModeBanner: false,
          theme: UiConfig.theme,
          // home: const LoginPage(),
          initialRoute: '/auth/login',
          unknownRoute: GetPage(
            name: '/404',
            page: () => const RouteNotFound(),
          ),
          getPages: [
            // GetPage(
            //   name: '/',
            //   page: () => const SplashScreen(),
            // ),
            GetPage(
              name: '/auth/login',
              page: () => const LoginPage(),
            ),
            GetPage(
              name: '/auth/register',
              page: () => const RegisterPage(),
            ),
            GetPage(
              name: '/dashboard/home',
              page: () => const Home(),
            ),
          ],
        );
      },
    );
  }
}
