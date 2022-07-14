import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/themes/app_theme.dart';
import 'presentation/app_router.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return MaterialApp(
      title: 'Firefly III Companion',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light, // TODO - add dark theme support
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGeneratedRoute,
    );
  }
}
