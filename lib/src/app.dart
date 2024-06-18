import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:slt_assesment/src/core/network/network.dart';
import 'package:slt_assesment/src/features/price_list/provider/price_provider.dart';
import 'package:slt_assesment/src/features/price_list/repository/price_list_repository.dart';
import 'features/price_list/price_item_list_view.dart';

class SltApp extends StatefulWidget {
  const SltApp({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => SltAppState();
}

class SltAppState extends State<SltApp> {
  late final PriceProvider priceProvider;

  @override
  void initState() {
    super.initState();

    priceProvider = PriceProvider(PriceListRepository(ApiClient()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'slt_app',

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      theme: ThemeData.light().copyWith(
          textTheme: Theme.of(context).textTheme.copyWith(
                bodyLarge: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
          scaffoldBackgroundColor: Colors.white,
          colorScheme: const ColorScheme.light(surface: Colors.white)),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              default:
                return PriceItemListView(
                  priceProvider: priceProvider,
                );
            }
          },
        );
      },
    );
  }
}
