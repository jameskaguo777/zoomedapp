import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:zoomed_app/screens/blog/page.dart';
import 'package:zoomed_app/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zoomed App',
        darkTheme: ThemeData(
          accentColor: Colors.orange,
          primarySwatch: Colors.brown,
          primaryColor: Colors.black,
          primaryColorBrightness: Brightness.dark,
          primaryColorDark: Colors.black,
          scaffoldBackgroundColor: Colors.black12,
          shadowColor: Colors.grey.shade200.withOpacity(0.3),
          colorScheme: ColorScheme(
              primary: Colors.black,
              primaryVariant: Colors.grey.shade900,
              secondary: Colors.deepOrange,
              secondaryVariant: Colors.grey.shade700,
              surface: Colors.black,
              background: Colors.black38,
              error: Colors.redAccent,
              onPrimary: Colors.black,
              onSecondary: Colors.black12,
              onSurface: Colors.black12,
              onBackground: Colors.black12,
              onError: Colors.red,
              brightness: Brightness.dark),
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          cardTheme: CardTheme(
              color: Colors.black,
              shadowColor: Colors.grey,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(0)),
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
          textTheme: TextTheme(
            headline3: TextStyle(
                fontFamily: 'Hammersmith',
                fontWeight: FontWeight.w700,
                color: Colors.white),
            overline: TextStyle(fontFamily: 'Ubuntu'),
            caption: TextStyle(color: Colors.accents.first),
          ),
        ),
        theme: ThemeData(
            accentColor: Colors.orange,
            primarySwatch: Colors.brown,
            primaryColor: Colors.white,
            primaryColorBrightness: Brightness.light,
            primaryColorLight: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            shadowColor: Colors.grey.shade200,
            colorScheme: ColorScheme(
                primary: Colors.white,
                primaryVariant: Colors.grey[300],
                secondary: Colors.deepOrange,
                secondaryVariant: Colors.grey[50],
                surface: Colors.white,
                background: Colors.black38,
                error: Colors.redAccent,
                onPrimary: Colors.white,
                onSecondary: Colors.white12,
                onSurface: Colors.white12,
                onBackground: Colors.white12,
                onError: Colors.red,
                brightness: Brightness.light),
            cardTheme: CardTheme(
                color: Colors.white,
                shadowColor: Colors.black,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: const EdgeInsets.all(0)),
            appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: Colors.white, opacity: 0.8)),
            brightness: Brightness.light,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Ubuntu',
            textTheme: TextTheme(
              headline3: TextStyle(
                  fontFamily: 'Hammersmith',
                fontWeight: FontWeight.w700,
                color: Colors.black),
              headline4: TextStyle(
                fontFamily: 'Hammersmith',
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
              caption: TextStyle(color: Colors.accents.first),
              overline: TextStyle(fontFamily: 'Ubuntu'),

            ),
            iconTheme: IconThemeData(color: Colors.accents.first)),
        themeMode: ThemeMode.light,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('sw', 'TZ'),
        ],
        localeListResolutionCallback: (locales, supportedLocales) =>
            supportedLocales.first,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/blog/page': (context) => PageScreen(),
        });
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//         title: Text(widget.title),
//       ),
//       body: Center(

//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               AppLocalizations.of(context).flutterDemoHome,
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
