import 'package:chat_app/authentication/login_screen.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:chat_app/main_screen.dart/home_screen.dart';
import 'package:chat_app/utilities/assets_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.savedThemeMode});

  final AdaptiveThemeMode? savedThemeMode;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: lightModePrimary,
          secondary: lightModeSecondary,
        ),
        dialogBackgroundColor: lightModeBackground,
        scaffoldBackgroundColor: lightModeBackground,
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
              ),
        ),
        splashColor: lightModePrimary,
      ),
      dark: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: darkModePrimary,
          secondary: darkModeSecondary,
        ),
        dialogBackgroundColor: darkModeBackground,
        scaffoldBackgroundColor: darkModeBackground,
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
        splashColor: darkModePrimary,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App',
        theme: theme,
        darkTheme: darkTheme,
        home: LoginScreen(),
      ),
    );
  }
}
