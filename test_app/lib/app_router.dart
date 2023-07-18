import 'package:flutter/material.dart';
import 'package:test_app/views/WelcomeScreen.dart';

import 'contant.dart';
import 'cubit/welcome_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRouter {
  late WelcomeCubit _welcomeCubit;
  AppRouter() {
    _welcomeCubit = WelcomeCubit();
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (BuildContext context) => _welcomeCubit,
              child:  const WelcomeScreen(),
            ));
    }
    return null;

  }
}
