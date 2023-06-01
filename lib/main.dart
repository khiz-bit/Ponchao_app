import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ponchao_app/infoHandler/app_info.dart';
import 'package:ponchao_app/screens/login_screen.dart';
import 'package:ponchao_app/screens/main_screen.dart';
import 'package:ponchao_app/screens/register_screen.dart';
import 'package:ponchao_app/screens/searchPlaces_screen.dart';
import 'package:ponchao_app/splash_screen/splash_screen.dart';
import 'package:ponchao_app/themeProvider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'Widgets/payFireAmountDialog.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: 'Ponchao',
        // Theme will depend on the system of your device
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

