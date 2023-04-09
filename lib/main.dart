import 'package:booky_app/constant.dart';
import 'package:booky_app/feature/howe/presentation/veiws/home_sceen.dart';
import 'package:booky_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashView(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
