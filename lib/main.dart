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
        Locale('zh'),
        Locale('mi'),
      ],
      home: Home(),
    ),
    // #enddocregion MaterialApp
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime selectedDate = DateTime.now();
  final _locale = const Locale('mi');

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      locale: _locale,
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: _locale,
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                const Text(
                  'Long Press hamburger icon to see tooltip language',
                ),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Select date'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
