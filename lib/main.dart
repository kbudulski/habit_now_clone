import 'package:flutter/material.dart';
import 'package:habit_now_clone/app/app.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:habit_now_clone/providers/navigation_provider.dart';
import 'package:habit_now_clone/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: TranslationProvider(child: const App()),
    ),
  );
}
