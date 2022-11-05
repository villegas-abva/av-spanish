import 'package:av_spanish/app_router.dart';
import 'package:av_spanish/home/home_screen.dart';
import 'package:flutter/material.dart';

class AVSpanishApp extends StatefulWidget {
  const AVSpanishApp({Key? key}) : super(key: key);

  @override
  State<AVSpanishApp> createState() => _AvSpanishAppState();
}

class _AvSpanishAppState extends State<AVSpanishApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: _appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
  }
}
