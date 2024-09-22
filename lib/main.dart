import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:share_blog/const_variabals.dart/project_colors.dart';
import 'package:share_blog/screens/splash_screen.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.statusBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: SolidColors.scaffoldBackgroundColor,
        ),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              color: SolidColors.whiteTransparentColor,
              fontFamily: 'vazir',
              fontSize: 22,
            ),
            bodyMedium: TextStyle(
              color: SolidColors.whiteTransparentColor,
              fontFamily: 'vazir',
              fontSize: 15,
            ),
            bodySmall: TextStyle(
              color: SolidColors.blackTitles,
              fontFamily: 'vazir',
              fontSize: 15,
            ),
            headlineMedium: TextStyle(
              fontWeight: FontWeight.w700,
              color: SolidColors.blueLinkTitles,
              fontFamily: 'vazir',
              fontSize: 17,
            )),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // farsi
      ],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SplashScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
