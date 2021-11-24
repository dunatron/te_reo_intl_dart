import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'mi_intl.dart';

void main() {
  runApp(
    // #docregion MaterialApp
    const MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        MiMaterialLocalizations.delegate, // delegate for maori/mi language
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('mi'),
      ],
      home: Home(),
    ),
    // #enddocregion MaterialApp
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: const Locale('mi'),
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListTile(
            leading: const Icon(Icons.change_history),
            title: const Text('Change history'),
            onTap: () {
              Navigator.pop(context); // close the drawer
            },
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
                'Long press hamburger icon in the app bar (aka the drawer menu)'
                'to see a localized tooltip for the `mi` locale. '),
          ),
        ),
      ),
    );
  }
}
