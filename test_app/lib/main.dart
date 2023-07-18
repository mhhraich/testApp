import 'package:flutter/material.dart';

import 'app_router.dart';
import 'contant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final TestApp testApp = TestApp(
    appRouter: AppRouter(),
    initialRoute: welcomeRoute,

  );
  runApp(testApp);
}

class TestApp extends StatelessWidget {
  final AppRouter appRouter;
  final String initialRoute;

  const TestApp(
      {super.key, required this.appRouter, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }
}

