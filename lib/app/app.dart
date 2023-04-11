import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habit_now_clone/app/app_scaffold.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';
import 'package:habit_now_clone/providers/theme_provider.dart';
import 'package:habit_now_clone/screens/categories/view/categories_view.dart';
import 'package:habit_now_clone/screens/habits/view/habits_view.dart';
import 'package:habit_now_clone/screens/tasks/view/tasks_view.dart';
import 'package:habit_now_clone/screens/today/view/today_view.dart';
import 'package:habit_now_clone/utils/constants.dart';
import 'package:habit_now_clone/utils/navigation.dart';
import 'package:provider/provider.dart';
import 'package:styleguide/style.dart';
import 'package:vrouter/vrouter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => VRouter(
        debugShowCheckedModeBanner: false,
        title: Constants.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: context.watch<ThemeProvider>().currentTheme,
        supportedLocales: AppLocaleUtils.supportedLocales,
        locale: TranslationProvider.of(context).flutterLocale,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        transitionDuration: Duration.zero,
        initialUrl: Paths.today,
        routes: [
          VNester(
            path: null,
            widgetBuilder: AppScaffold.new,
            nestedRoutes: [
              VWidget(path: Paths.today, widget: const TodayView()),
              VWidget(path: Paths.habits, widget: const HabitsView()),
              VWidget(path: Paths.tasks, widget: const TasksView()),
            ],
          ),
          VPopHandler(
            onSystemPop: (v) async => v.historyBack(),
            stackedRoutes: [
              VWidget(
                path: Paths.categories,
                widget: const CategoriesView(),
                transitionDuration: AppTimes.millis200,
                buildTransition: _fadeTransition,
              ),
            ],
          ),
        ],
      );

  Widget _fadeTransition(Animation<double> animation, _, Widget child) =>
      FadeTransition(opacity: animation, child: child);
}
