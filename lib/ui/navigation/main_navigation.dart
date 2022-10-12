import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_db/ui/widgets/main_screen/main_screen_widget_model.dart';
import 'package:the_movie_db/ui/widgets/movie_trailer/movie_trailer_widget.dart';

import '../../Library/Widgets/Inherited/provider.dart';
import '../widgets/auth/auth_widget.dart';
import '../widgets/auth/auth_widget_model.dart';
import '../widgets/main_screen/main_screen_widget.dart';
import '../widgets/movie_details/movie_details_model.dart';
import '../widgets/movie_details/movie_details_widget.dart';

abstract class MainNavigationRouteNames {
  static const auth = 'auth';
  static const mainScreen = '/';
  static const movieDetails = '/movie_details';
  static const movieTrailerWidget = '/movie_details/trailer';
}

class MainNavigation {
  String initialRoute(bool isAuth) => isAuth
      ? MainNavigationRouteNames.mainScreen
      : MainNavigationRouteNames.auth;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (context) => NotifierProvider(
          create: () => AuthWidgetModel(),
          child: const AuthWidget(),
        ),
    MainNavigationRouteNames.mainScreen: (context) => NotifierProvider(
          create: () => MainScreenWidgetModel(),
          child: const MainScreenWidget(),
        ),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.movieDetails:
        final arguments = settings.arguments;
        final movieId = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: (context) => NotifierProvider(
            create: () => MovieDetailsModel(movieId)..setupLocale(context),
            child: const MovieDetailsWidget(),
          ),
        );
      case MainNavigationRouteNames.movieTrailerWidget:
        final arguments = settings.arguments;
        final youtubeKey = arguments is String ? arguments : '';
        return MaterialPageRoute(
          builder: (context) => MovieTrailerWidget(youtubeKey: youtubeKey),
        );
      default:
        const widget = Text('Navigation Error!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
