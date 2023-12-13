import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_bloc/app_routes.dart';

void main(){
  runApp( BreakingBadApp(appRoute: AppRoute(),));
}
class BreakingBadApp extends StatelessWidget {
  final AppRoute appRoute;
  const BreakingBadApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:appRoute.generateRoute ,

    );
  }
}
