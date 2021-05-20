import 'package:asuka/asuka.dart' as asuka show builder;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shared/constants/constants.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'ViwQuestões',
        theme: ThemesConst.dark,
        initialRoute: AppRoutersConst.splash,
        debugShowCheckedModeBanner: false,
        builder: asuka.builder,
        supportedLocales: [
          Locale('en', 'US'),
          Locale('pt', 'BR'),
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
      ).modular();
}
